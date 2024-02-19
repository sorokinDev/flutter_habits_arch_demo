import 'package:bloc/bloc.dart';
import 'package:habits_arch_demo/core/providers.dart';
import 'package:habits_arch_demo/domain/entities/entities.dart';
import 'package:riverpod/riverpod.dart';

import '../../../domain/repositories/repositories.dart';
import 'habit_create_state.dart';

final habitCreateCubitProvider = Provider.autoDispose(
  (ref) => HabitCreateCubit(
    ref.read(habitRepositoryProvider),
  ),
);

class HabitCreateCubit extends Cubit<HabitCreateState> {
  final HabitsRepository _repository;

  HabitCreateCubit(
    this._repository,
  ) : super(const HabitCreateState.idle());

  Future<void> submit({
    required String title,
  }) async {
    emit(const HabitCreateState.progress());
    try {
      await _repository.addHabit(HabitCreationEntity(title: title));
      emit(const HabitCreateState.success());
    } catch (e) {
      emit(const HabitCreateState.error());
    }
  }
}
