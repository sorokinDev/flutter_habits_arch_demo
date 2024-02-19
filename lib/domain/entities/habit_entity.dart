import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_entity.freezed.dart';

@freezed
class HabitEntity with _$HabitEntity {
  const factory HabitEntity({
    required String id,
    required String title,
    @Default({}) Set<DateTime> completedDates,
  }) = _HabitEntity;
}