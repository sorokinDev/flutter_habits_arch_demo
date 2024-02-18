import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits_arch_demo/domain/entities/entities.dart';

import '../../../domain/repositories/repositories.dart';

part 'habit_create_bloc.freezed.dart';

class HabitCreationBloc extends Bloc<HabitCreationEvent, HabitCreationState> {
  final HabitsRepository _repository;

  HabitCreationBloc(this._repository)
      : super(const HabitCreationState.initial()) {
    on<HabitCreationSubmitPressed>(_onSubmitted);
  }

  Future<FutureOr<void>> _onSubmitted(
    HabitCreationSubmitPressed event,
    Emitter<HabitCreationState> emit,
  ) async {
    emit(const HabitCreationState.progress());
    try {
      await _repository.addHabit(HabitCreationEntity(title: event.title));
      emit(const HabitCreationState.success());
    } catch (_) {
      emit(const HabitCreationState.failure());
    }
  }
}

@freezed
sealed class HabitCreationEvent with _$HabitCreationEvent {
  const factory HabitCreationEvent.submitPressed({
    required String title,
  }) = HabitCreationSubmitPressed;
}

@freezed
sealed class HabitCreationState with _$HabitCreationState {
  const factory HabitCreationState.initial() = HabitCreationInitial;
  const factory HabitCreationState.progress() = HabitCreationProgress;
  const factory HabitCreationState.failure() = HabitCreationFailure;
  const factory HabitCreationState.success() = HabitCreationSuccess;
}
