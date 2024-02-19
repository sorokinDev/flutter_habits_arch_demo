import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:habits_arch_demo/core/providers.dart';
import 'package:riverpod/riverpod.dart';

import '../../../domain/repositories/repositories.dart';
import 'home_events.dart';
import 'home_state.dart';

final homeBlocProvider = Provider.autoDispose(
  (ref) => HomeBloc(
    ref.read(habitRepositoryProvider),
  ),
);

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HabitsRepository _repository;

  HomeBloc(this._repository) : super(const HomeState.progress()) {
    on<HomeStarted>(_onStarted);
    on<HomeRetry>(_retryLoading);
    on<HomeDatePressed>(_datePressed);
  }

  void started() {
    add(const HomeEvent.started());
  }

  void retryLoading() {
    add(const HomeEvent.retry());
  }

  void datePressed({
    required String habitId,
    required DateTime date,
  }) {
    add(HomeEvent.datePressed(habitId: habitId, date: date));
  }

  FutureOr<void> _onStarted(HomeStarted event, Emitter<HomeState> emit) {
    emit(const HomeState.progress());
    emit.forEach(
      _repository.habitsStream,
      onData: (habits) => HomeState.data(habits: habits),
      onError: (e, _) => const HomeState.failure(),
    );
  }

  FutureOr<void> _retryLoading(HomeRetry event, Emitter<HomeState> emit) {
    emit(const HomeState.progress());
    _repository.fetchHabits();
  }

  Future<void> _datePressed(
    HomeDatePressed event,
    Emitter<HomeState> emit,
  ) async {
    await _repository.toggleDateForHabit(
      habitId: event.habitId,
      date: event.date,
    );
  }

}
