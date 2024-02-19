import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habits_arch_demo/data/dao/habit_runtime_dao.dart';
import 'package:habits_arch_demo/domain/mappers/habit_mapper.dart';
import 'package:habits_arch_demo/domain/repositories/habit_repository.dart';
import 'package:habits_arch_demo/domain/repositories/habit_repository_impl.dart';
import 'package:uuid/uuid.dart';

import '../data/dao/habit_dao.dart';

final uuidProvider = Provider((ref) => const Uuid());

final habitDaoProvider = Provider<HabitDao>(
  (ref) => HabitRuntimeDao(
    ref.read(uuidProvider),
  ),
);

final habitMapperProvider = Provider<HabitMapper>(
  (ref) => HabitMapper(),
);

final habitRepositoryProvider = Provider<HabitsRepository>(
  (ref) => HabitsRepositoryImpl(
    ref.read(habitDaoProvider),
    ref.read(habitMapperProvider),
  ),
);
