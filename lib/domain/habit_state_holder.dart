import 'package:flutter/material.dart';
import 'package:habits_arch_demo/data/dao/habit_dao.dart';
import 'package:uuid/uuid.dart';

import '../../data/models/habit.dart';
import '../data/dao/habit_runtime_dao.dart';

class HabitsStateHolder extends ChangeNotifier {
  static final instance = HabitsStateHolder();

  final HabitDao _dao = HabitRuntimeDao();
  final Uuid _uuid = const Uuid();

  Map<String, Habit> _habits = {};
  HabitsLoadingStatus _habitsLoadingStatus = HabitsLoadingStatus.loading;

  List<Habit> get habits => _habits.values.toList();
  HabitsLoadingStatus get habitsLoadingStatus => _habitsLoadingStatus;

  Future<void> fetchHabits() async {
    try {
      _habitsLoadingStatus = HabitsLoadingStatus.loading;
      notifyListeners();

      final habitList = await _dao.getAllHabits();

      _habits = Map.fromEntries(
        habitList.map((habit) => MapEntry(habit.id, habit)),
      );
      _habitsLoadingStatus = HabitsLoadingStatus.data;
    } catch (_) {
      _habits = {};
      _habitsLoadingStatus = HabitsLoadingStatus.error;
    } finally {
      notifyListeners();
    }
  }

  Future<void> addHabit({
    required String title,
  }) async {
    final habit = Habit(
      id: _uuid.v1(),
      title: title,
    );
    try {
      await _dao.addHabit(habit);
      _habits = Map.of(_habits)..[habit.id] =  habit;
      notifyListeners();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> toggleDateForHabit({
    required String habitId,
    required DateTime date,
  }) async {
    final dateOnly = DateUtils.dateOnly(date);
    final habit = _habits[habitId];
    if (habit == null) {
      throw Exception('No habit with id: $habitId');
    }

    final updatedDates = Set.of(habit.completedDates);
    if (habit.completedDates.contains(dateOnly)) {
      updatedDates.remove(dateOnly);
    } else {
      updatedDates.add(dateOnly);
    }
    final updatedHabit = habit.copyWith(
      completedDates: updatedDates,
    );

    await _dao.updateHabit(updatedHabit);

    _habits = Map.of(_habits)..[habitId] = updatedHabit;
    notifyListeners();
  }

  Habit? getHabitById(String id) => _habits[id];
}

enum HabitsLoadingStatus {
  loading,
  data,
  error,
}
