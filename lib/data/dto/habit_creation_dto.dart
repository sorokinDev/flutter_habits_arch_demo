import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_creation_dto.freezed.dart';

@freezed
class HabitCreationDto with _$HabitCreationDto {
  const factory HabitCreationDto({
    required String title,
    @Default({}) Set<DateTime> completedDates,
  }) = _HabitCreationDto;
}
