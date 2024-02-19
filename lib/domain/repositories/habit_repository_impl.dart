import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../mappers/habit_mapper.dart';
import '../../data/dao/habit_dao.dart';
import '../entities/habit_creation_entity.dart';
import '../entities/habit_entity.dart';
import 'habit_repository.dart';

class HabitsRepositoryImpl implements HabitsRepository {
  final HabitDao _habitDao;
  final HabitMapper _mapper;

  HabitsRepositoryImpl(this._habitDao, this._mapper);

  late final BehaviorSubject<Map<String, HabitEntity>> _habitsSubject =
      BehaviorSubject(
    onListen: () async {
      await _fetchHabitsIfNeeded();
    },
  );

  @override
  Stream<List<HabitEntity>> get habitsStream =>
      _habitsSubject.map((habitsMap) => habitsMap.values.toList());

  @override
  Stream<HabitEntity> habitByIdStream(String id) =>
      _habitsSubject.map((habitsMap) => habitsMap[id]).whereNotNull();

  @override
  Future<HabitEntity> addHabit(HabitCreationEntity habit) async {
    try {
      final addedDto = await _habitDao.addHabit(
        _mapper.mapHabitCreationEntityToDto(habit),
      );
      final addedEntity = _mapper.mapHabitDtoToEntity(addedDto);

      _habitsSubject.add(
        Map.of(_habitsSubject.value)..[addedEntity.id] = addedEntity,
      );
      return addedEntity;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HabitEntity> toggleDateForHabit({
    required String habitId,
    required DateTime date,
  }) async {
    final dateOnly = DateUtils.dateOnly(date);
    final habit = _habitsSubject.value[habitId];
    if (habit == null) {
      throw Exception('No habit with id: $habitId');
    }

    final updatedDates = Set.of(habit.completedDates);
    if (habit.completedDates.contains(dateOnly)) {
      updatedDates.remove(dateOnly);
    } else {
      updatedDates.add(dateOnly);
    }
    final habitForUpdate = habit.copyWith(
      completedDates: updatedDates,
    );

    final updatedDto = await _habitDao.updateHabit(
      _mapper.mapHabitEntityToDto(habitForUpdate),
    );
    final updatedHabit = _mapper.mapHabitDtoToEntity(updatedDto);

    _habitsSubject.add(
      Map.of(_habitsSubject.value)..[updatedHabit.id] = updatedHabit,
    );
    return updatedHabit;
  }

  @override
  Future<void> fetchHabits() async {
    await _fetchHabitsIfNeeded(forceFetch: true);
  }

  Future<void> _fetchHabitsIfNeeded({
    bool forceFetch = false,
  }) async {
    if (_habitsSubject.hasValue && !forceFetch) {
      return;
    }

    final habitsDto = await _habitDao.getAllHabits();
    final habitsMap = Map.fromEntries(habitsDto.map((dto) {
      final habitEntity = _mapper.mapHabitDtoToEntity(dto);
      return MapEntry(habitEntity.id, habitEntity);
    }));
    _habitsSubject.add(habitsMap);
  }
}
