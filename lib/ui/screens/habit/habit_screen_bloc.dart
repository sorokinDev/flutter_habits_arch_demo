import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/repositories/repositories.dart';

part 'habit_screen_bloc.freezed.dart';

class HabitScreenBloc extends Bloc<HabitScreenEvent, HabitScreenState> {
  final HabitsRepository _repository;
  final String _habitId;

  HabitScreenBloc(
    this._repository, {
    required String habitId,
  })  : _habitId = habitId,
        super(const HabitScreenState.loading()) {
    on<HabitScreenStarted>(_onStarted);
    on<HabitScreenDatePressed>(_onDatePressed);
  }

  FutureOr<void> _onStarted(
    HabitScreenStarted event,
    Emitter<HabitScreenState> emit,
  ) {
    emit(const HabitScreenState.loading());
    emit.forEach(
      _repository.habitByIdStream(_habitId),
      onData: (habit) => HabitScreenState.data(habit: habit),
      onError: (_, __) => const HabitScreenState.failure(),
    );
  }

  Future<void> _onDatePressed(
    HabitScreenDatePressed event,
    Emitter<HabitScreenState> emit,
  ) async {
    await _repository.toggleDateForHabit(habitId: _habitId, date: event.date,);
  }
}

@freezed
sealed class HabitScreenEvent with _$HabitScreenEvent {
  const factory HabitScreenEvent.started() = HabitScreenStarted;
  const factory HabitScreenEvent.datePressed({
    required DateTime date,
  }) = HabitScreenDatePressed;
}

@freezed
sealed class HabitScreenState with _$HabitScreenState {
  const factory HabitScreenState.loading() = HabitScreenLoading;
  const factory HabitScreenState.data({
    required HabitEntity habit,
  }) = HabitScreenData;
  const factory HabitScreenState.failure() = HabitScreenFailure;
}
