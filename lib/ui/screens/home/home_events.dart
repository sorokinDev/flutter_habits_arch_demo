import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_events.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = HomeStarted;
  const factory HomeEvent.retry() = HomeRetry;
  const factory HomeEvent.datePressed({
    required String habitId,
    required DateTime date,
  }) = HomeDatePressed;
}