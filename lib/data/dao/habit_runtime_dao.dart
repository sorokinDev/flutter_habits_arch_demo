import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../models/habit.dart';
import 'habit_dao.dart';

class HabitRuntimeDao implements HabitDao {
  final Uuid _uuid = const Uuid();

  late final Map<String, Habit> _habits = _createInitialData();

  HabitRuntimeDao();

  @override
  Future<List<Habit>> getAllHabits() => Future.delayed(
        const Duration(seconds: 1),
        () => _habits.values.toList(),
      );

  @override
  Future<void> addHabit(Habit habit) async {
    await Future.delayed(const Duration(seconds: 1));
    _habits[habit.id] = habit;
  }

  @override
  Future<void> updateHabit(Habit habit) async {
    _habits[habit.id] = habit;
  }

  Map<String, Habit> _createInitialData() => Map.fromEntries(
        [
          Habit(
            id: _uuid.v1(),
            title: 'Sleep 8 hrs',
            completedDates: {
              DateUtils.dateOnly(
                DateTime.now().subtract(const Duration(days: 1)),
              ),
            },
          ),
          Habit(
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
