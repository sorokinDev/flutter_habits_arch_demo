import 'package:flutter/material.dart';
import 'package:habits_arch_demo/data/models/habit.dart';
import 'package:uuid/uuid.dart';

import 'habit_dao.dart';

class HabitMockDao implements HabitDao {
  final _uuid = const Uuid();

  late final List<Habit> _habits = [
    Habit(
      id: _uuid.v1(),
      title: 'Sleep 8 hrs',
      completedDates: {
        DateUtils.dateOnly(DateTime.now().subtract(Duration(days: 1))),
      },
    ),
    Habit(
      id: _uuid.v1(),
      title: 'Read Books',
      completedDates: {
        DateUtils.dateOnly(DateTime.now().subtract(Duration(days: 2))),
        DateUtils.dateOnly(DateTime.now().subtract(Duration(days: 3))),
      },
    ),
  ];

  @override
  Future<List<Habit>> getAllHabits() =>
      Future.delayed(const Duration(seconds: 1), () => _habits);

  @override
  Future<void> addHabit(Habit habit) async {
    await Future.delayed(const Duration(seconds: 1));
    _habits.add(habit);
  }

  @override
  Future<void> saveHabit(Habit habit) async {
    final indexOfHabit = _habits.indexWhere((item) => item.id == habit.id);
    if (indexOfHabit >= 0) {
      _habits[indexOfHabit] = habit;
    }
  }
}
