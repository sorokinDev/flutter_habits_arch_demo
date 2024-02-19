import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_dto.freezed.dart';

@freezed
class HabitDto with _$HabitDto {
  factory HabitDto({
    required String id,
    required String title,
    @Default({}) Set<DateTime> completedDates,
  }) = _HabitDto;
}
