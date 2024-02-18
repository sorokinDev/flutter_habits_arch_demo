import 'package:get_it/get_it.dart';
import 'package:habits_arch_demo/data/dao/habit_dao.dart';
import 'package:habits_arch_demo/domain/repositories/habits_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../data/dao/habit_runtime_dao.dart';
import 'di.config.dart';

final _getIt = GetIt.instance;
final diContainer = DependencyContainer._();

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => _getIt.init();

@module
abstract class RegisterModule {
  @lazySingleton
  Uuid uuid() => const Uuid();

  @lazySingleton
  HabitDao habitDao(Uuid uuid) => HabitRuntimeDao(uuid);

  @lazySingleton
  HabitsRepository habitsRepository(
    HabitDao habitDao,
    Uuid uuid,
  ) =>
      throw UnimplementedError();
}

class DependencyContainer {
  DependencyContainer._();

  HabitsRepository get habitsRepository => _getIt<HabitsRepository>();
}
