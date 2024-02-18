import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits_arch_demo/domain/entities/entities.dart';

import '../../../domain/repositories/repositories.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HabitsRepository _repository;

  HomeBloc(this._repository) : super(const HomeState.progress()) {
    on<HomeStarted>(_loadHabits);
    on<HomeRetry>(_loadHabits);
  }

  FutureOr<void> _loadHabits(HomeStarted event, Emitter<HomeState> emit) {

  }
}

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = HomeStarted;
  const factory HomeEvent.retry() = HomeRetry;
}

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.progress() = HomeProgress;
  const factory HomeState.data({
    required List<HabitEntity> habits,
  }) = HomeData;
  const factory HomeState.failure() = HomeFailure;
}
