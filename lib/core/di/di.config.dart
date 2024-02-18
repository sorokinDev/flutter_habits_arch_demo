// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:uuid/uuid.dart' as _i3;

import '../../data/dao/habit_dao.dart' as _i4;
import '../../domain/repositories/habits_repository.dart' as _i5;
import 'di.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Uuid>(() => registerModule.uuid());
    gh.lazySingleton<_i4.HabitDao>(
        () => registerModule.habitDao(gh<_i3.Uuid>()));
    gh.lazySingleton<_i5.HabitsRepository>(
        () => registerModule.habitsRepository(
              gh<_i4.HabitDao>(),
              gh<_i3.Uuid>(),
            ));
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
