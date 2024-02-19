import '../dto/dtos.dart';

abstract interface class HabitDao {
  Future<List<HabitDto>> getAllHabits();
  Future<HabitDto> addHabit(HabitCreationDto habit);
  Future<HabitDto> updateHabit(HabitDto habit);
}