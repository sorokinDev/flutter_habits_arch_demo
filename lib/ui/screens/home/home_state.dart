import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.progress() = HomeProgress;
  const factory HomeState.data({
    required List<HabitEntity> habits,
  }) = HomeData;
  const factory HomeState.failure() = HomeFailure;
}