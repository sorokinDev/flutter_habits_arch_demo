import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../dto/dtos.dart';
import 'habit_dao.dart';

class HabitRuntimeDao implements HabitDao {
  final Uuid _uuid;

  late final Map<String, HabitDto> _habits = _createInitialData();

  HabitRuntimeDao(this._uuid);

  @override
  Future<List<HabitDto>> getAllHabits() => Future.delayed(
    const Duration(seconds: 1),
        () => _habits.values.toList(),
  );

  @override
  Future<HabitDto> addHabit(HabitCreationDto habit) async {
    await Future.delayed(const Duration(seconds: 1));
    final newHabit = HabitDto(
      id: _uuid.v1(),
      title: habit.title,
    );
    _habits[newHabit.id] = newHabit;
    return newHabit;
  }

  @override
  Future<HabitDto> updateHabit(HabitDto habit) async {
    _habits[habit.id] = habit;
    return habit;
  }

  Map<String, HabitDto> _createInitialData() => Map.fromEntries(
    [
      HabitDto(
        id: _uuid.v1(),
        title: 'Sleep 8 hrs',
        completedDates: {
          DateUtils.dateOnly(
            DateTime.now().subtract(const Duration(days: 1)),
          ),
        },
      ),
      HabitDto(
        id: _uuid.v1(),
        title: 'Read Books',
        completedDates: {
          DateUtils.dateOnly(
            DateTime.now().subtract(const Duration(days: 2)),
          ),
          DateUtils.dateOnly(
            DateTime.now().subtract(const Duration(days: 3)),
          ),
        },
      ),
    ].map((habit) => MapEntry(habit.id, habit)),
  );
}
