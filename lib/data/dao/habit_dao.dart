import '../models/habit.dart';

abstract interface class HabitDao {
  Future<List<Habit>> getAllHabits();
  Future<void> addHabit(Habit habit);
  Future<void> updateHabit(Habit habit);
}