import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';

part 'habit_show_state.freezed.dart';

@freezed
sealed class HabitShowState with _$HabitShowState {
  const factory HabitShowState.loading() = HabitShowLoading;
  const factory HabitShowState.data({
    required HabitEntity habit,
  }) = HabitShowData;
  const factory HabitShowState.failure() = HabitShowFailure;
}
