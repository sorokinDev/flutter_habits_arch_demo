import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_show_events.freezed.dart';

@freezed
sealed class HabitShowEvent with _$HabitShowEvent {
  const factory HabitShowEvent.started() = HabitShowStarted;
  const factory HabitShowEvent.datePressed({
    required DateTime date,
  }) = HabitShowDatePressed;
}