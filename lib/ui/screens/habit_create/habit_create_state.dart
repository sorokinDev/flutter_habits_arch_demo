import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_create_state.freezed.dart';

@freezed
class HabitCreateState with _$HabitCreateState {
  const factory HabitCreateState.idle() = HabitCreateIdle;
  const factory HabitCreateState.progress() = HabitCreateProgress;
  const factory HabitCreateState.success() = HabitCreateSuccess;
  const factory HabitCreateState.error() = HabitCreateError;
}