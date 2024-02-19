// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(List<HabitEntity> habits) data,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? progress,
    TResult? Function(List<HabitEntity> habits)? data,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(List<HabitEntity> habits)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeProgress value) progress,
    required TResult Function(HomeData value) data,
    required TResult Function(HomeFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeProgress value)? progress,
    TResult? Function(HomeData value)? data,
    TResult? Function(HomeFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeProgress value)? progress,
    TResult Function(HomeData value)? data,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeProgressImplCopyWith<$Res> {
  factory _$$HomeProgressImplCopyWith(
          _$HomeProgressImpl value, $Res Function(_$HomeProgressImpl) then) =
      __$$HomeProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeProgressImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeProgressImpl>
    implements _$$HomeProgressImplCopyWith<$Res> {
  __$$HomeProgressImplCopyWithImpl(
      _$HomeProgressImpl _value, $Res Function(_$HomeProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeProgressImpl implements HomeProgress {
  const _$HomeProgressImpl();

  @override
  String toString() {
    return 'HomeState.progress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(List<HabitEntity> habits) data,
    required TResult Function() failure,
  }) {
    return progress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? progress,
    TResult? Function(List<HabitEntity> habits)? data,
    TResult? Function()? failure,
  }) {
    return progress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(List<HabitEntity> habits)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeProgress value) progress,
    required TResult Function(HomeData value) data,
    required TResult Function(HomeFailure value) failure,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeProgress value)? progress,
    TResult? Function(HomeData value)? data,
    TResult? Function(HomeFailure value)? failure,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeProgress value)? progress,
    TResult Function(HomeData value)? data,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class HomeProgress implements HomeState {
  const factory HomeProgress() = _$HomeProgressImpl;
}

/// @nodoc
abstract class _$$HomeDataImplCopyWith<$Res> {
  factory _$$HomeDataImplCopyWith(
          _$HomeDataImpl value, $Res Function(_$HomeDataImpl) then) =
      __$$HomeDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HabitEntity> habits});
}

/// @nodoc
class __$$HomeDataImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeDataImpl>
    implements _$$HomeDataImplCopyWith<$Res> {
  __$$HomeDataImplCopyWithImpl(
      _$HomeDataImpl _value, $Res Function(_$HomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habits = null,
  }) {
    return _then(_$HomeDataImpl(
      habits: null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<HabitEntity>,
    ));
  }
}

/// @nodoc

class _$HomeDataImpl implements HomeData {
  const _$HomeDataImpl({required final List<HabitEntity> habits})
      : _habits = habits;

  final List<HabitEntity> _habits;
  @override
  List<HabitEntity> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  String toString() {
    return 'HomeState.data(habits: $habits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataImpl &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_habits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(List<HabitEntity> habits) data,
    required TResult Function() failure,
  }) {
    return data(habits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? progress,
    TResult? Function(List<HabitEntity> habits)? data,
    TResult? Function()? failure,
  }) {
    return data?.call(habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(List<HabitEntity> habits)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeProgress value) progress,
    required TResult Function(HomeData value) data,
    required TResult Function(HomeFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeProgress value)? progress,
    TResult? Function(HomeData value)? data,
    TResult? Function(HomeFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeProgress value)? progress,
    TResult Function(HomeData value)? data,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeData implements HomeState {
  const factory HomeData({required final List<HabitEntity> habits}) =
      _$HomeDataImpl;

  List<HabitEntity> get habits;
  @JsonKey(ignore: true)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeFailureImplCopyWith<$Res> {
  factory _$$HomeFailureImplCopyWith(
          _$HomeFailureImpl value, $Res Function(_$HomeFailureImpl) then) =
      __$$HomeFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeFailureImpl>
    implements _$$HomeFailureImplCopyWith<$Res> {
  __$$HomeFailureImplCopyWithImpl(
      _$HomeFailureImpl _value, $Res Function(_$HomeFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeFailureImpl implements HomeFailure {
  const _$HomeFailureImpl();

  @override
  String toString() {
    return 'HomeState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(List<HabitEntity> habits) data,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? progress,
    TResult? Function(List<HabitEntity> habits)? data,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(List<HabitEntity> habits)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeProgress value) progress,
    required TResult Function(HomeData value) data,
    required TResult Function(HomeFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeProgress value)? progress,
    TResult? Function(HomeData value)? data,
    TResult? Function(HomeFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeProgress value)? progress,
    TResult Function(HomeData value)? data,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeFailure implements HomeState {
  const factory HomeFailure() = _$HomeFailureImpl;
}
