import 'package:rxdart/rxdart.dart';

import '../entities/entities.dart';

abstract interface class HabitsRepository {
  ValueStream<List<HabitEntity>> get habitsStream;
  ValueStream<HabitEntity> habitByIdStream(String id);

  Future<HabitEntity> addHabit(HabitCreationEntity habit);
  Future<HabitEntity> toggleDateForHabit({
    required String habitId,
    required DateTime date,
  });
}
