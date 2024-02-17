import 'package:flutter/material.dart';
import 'package:habits_arch_demo/data/dao/habit_dao.dart';
import 'package:uuid/uuid.dart';

import '../../data/dao/habit_mock_dao.dart';
import '../../data/models/habit.dart';

class HabitsStateHolder extends ChangeNotifier {
  final HabitDao _dao = HabitMockDao();
  final Uuid _uuid = const Uuid();

  List<Habit> _habits = [];
  HabitsLoadingStatus _habitsLoadingStatus = HabitsLoadingStatus.loading;

  List<Habit> get habits => _habits;
  HabitsLoadingStatus get habitsLoadingStatus => _habitsLoadingStatus;

  Future<void> fetchHabits() async {
    try {
      _habitsLoadingStatus = HabitsLoadingStatus.loading;
      notifyListeners();

      final habits = List.of(await _dao.getAllHabits());

      _habitsLoadingStatus = HabitsLoadingStatus.data;
      _habits = habits;
    } catch (_) {
      _habitsLoadingStatus = HabitsLoadingStatus.error;
      _habits = [];
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
      completedDates: {},
    );
    try {
      await _dao.addHabit(habit);
      _habits.add(habit);
      notifyListeners();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> toggleDateForHabit({
    required Habit habit,
    required DateTime date,
  }) async {
    final dateOnly = DateUtils.dateOnly(date);

    if (habit.completedDates.contains(dateOnly)) {
      habit.completedDates.remove(dateOnly);
    } else {
      habit.completedDates.add(dateOnly);
    }

    await _dao.saveHabit(habit);
    notifyListeners();
  }
}

enum HabitsLoadingStatus {
  loading,
  data,
  error,
}
