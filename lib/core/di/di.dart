import 'package:get_it/get_it.dart';
import 'package:habits_arch_demo/data/dao/habit_dao.dart';
import 'package:habits_arch_demo/data/dao/habit_mock_dao.dart';
import 'package:habits_arch_demo/domain/habits_state/habits_state_holder.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @lazySingleton
  Uuid uuid() => const Uuid();

  @lazySingleton
  HabitDao habitDao() => HabitMockDao();

  @lazySingleton
  HabitsStateHolder habitsStateHolder(
    HabitDao habitDao,
    Uuid uuid,
  ) =>
      HabitsStateHolder(habitDao, uuid);
}

abstract class Locator {
  static final habitsStateHolder = getIt<HabitsStateHolder>();
}
