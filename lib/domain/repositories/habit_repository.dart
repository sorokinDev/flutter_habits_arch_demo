import '../entities/entities.dart';

abstract interface class HabitsRepository {
  Stream<List<HabitEntity>> get habitsStream;
  Stream<HabitEntity> habitByIdStream(String id);

  Future<HabitEntity> addHabit(HabitCreationEntity habit);
  Future<HabitEntity> toggleDateForHabit({
    required String habitId,
    required DateTime date,
  });

  Future<void> fetchHabits();
}
