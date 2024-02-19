import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:habits_arch_demo/core/providers.dart';
import 'package:riverpod/riverpod.dart';

import '../../../domain/repositories/repositories.dart';
import 'habit_show_events.dart';
import 'habit_show_state.dart';

final habitShowBlocProvider =
    Provider.family.autoDispose<HabitShowBloc, String>(
  (ref, habitId) => HabitShowBloc(
    ref.watch(habitRepositoryProvider),
    habitId: habitId,
  ),
);

class HabitShowBloc extends Bloc<HabitShowEvent, HabitShowState> {
  final HabitsRepository _repository;
  final String _habitId;

  HabitShowBloc(
    this._repository, {
    required String habitId,
  })  : _habitId = habitId,
        super(const HabitShowState.loading()) {
    on<HabitShowStarted>(_onStarted);
    on<HabitShowDatePressed>(_onDatePressed);
  }

  FutureOr<void> _onStarted(
    HabitShowStarted event,
    Emitter<HabitShowState> emit,
  ) {
    emit(const HabitShowState.loading());
    emit.forEach(
      _repository.habitByIdStream(_habitId),
      onData: (habit) => HabitShowState.data(habit: habit),
      onError: (_, __) => const HabitShowState.failure(),
    );
  }

  Future<void> _onDatePressed(
    HabitShowDatePressed event,
    Emitter<HabitShowState> emit,
  ) async {
    await _repository.toggleDateForHabit(
      habitId: _habitId,
      date: event.date,
    );
  }
}
