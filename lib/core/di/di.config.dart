// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:uuid/uuid.dart' as _i4;

import '../../data/dao/habit_dao.dart' as _i3;
import '../../domain/habits_state/habits_state_holder.dart' as _i5;
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
    gh.lazySingleton<_i3.HabitDao>(() => registerModule.habitDao());
    gh.lazySingleton<_i4.Uuid>(() => registerModule.uuid());
    gh.lazySingleton<_i5.HabitsStateHolder>(
        () => registerModule.habitsStateHolder(
              gh<_i3.HabitDao>(),
              gh<_i4.Uuid>(),
            ));
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
