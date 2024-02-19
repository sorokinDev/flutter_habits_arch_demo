// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_show_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitShowState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HabitEntity habit) data,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HabitEntity habit)? data,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HabitEntity habit)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitShowLoading value) loading,
    required TResult Function(HabitShowData value) data,
    required TResult Function(HabitShowFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitShowLoading value)? loading,
    TResult? Function(HabitShowData value)? data,
    TResult? Function(HabitShowFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitShowLoading value)? loading,
    TResult Function(HabitShowData value)? data,
    TResult Function(HabitShowFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitShowStateCopyWith<$Res> {
  factory $HabitShowStateCopyWith(
          HabitShowState value, $Res Function(HabitShowState) then) =
      _$HabitShowStateCopyWithImpl<$Res, HabitShowState>;
}

/// @nodoc
class _$HabitShowStateCopyWithImpl<$Res, $Val extends HabitShowState>
    implements $HabitShowStateCopyWith<$Res> {
  _$HabitShowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HabitShowLoadingImplCopyWith<$Res> {
  factory _$$HabitShowLoadingImplCopyWith(_$HabitShowLoadingImpl value,
          $Res Function(_$HabitShowLoadingImpl) then) =
      __$$HabitShowLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitShowLoadingImplCopyWithImpl<$Res>
    extends _$HabitShowStateCopyWithImpl<$Res, _$HabitShowLoadingImpl>
    implements _$$HabitShowLoadingImplCopyWith<$Res> {
  __$$HabitShowLoadingImplCopyWithImpl(_$HabitShowLoadingImpl _value,
      $Res Function(_$HabitShowLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitShowLoadingImpl implements HabitShowLoading {
  const _$HabitShowLoadingImpl();

  @override
  String toString() {
    return 'HabitShowState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitShowLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HabitEntity habit) data,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HabitEntity habit)? data,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HabitEntity habit)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitShowLoading value) loading,
    required TResult Function(HabitShowData value) data,
    required TResult Function(HabitShowFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitShowLoading value)? loading,
    TResult? Function(HabitShowData value)? data,
    TResult? Function(HabitShowFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitShowLoading value)? loading,
    TResult Function(HabitShowData value)? data,
    TResult Function(HabitShowFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HabitShowLoading implements HabitShowState {
  const factory HabitShowLoading() = _$HabitShowLoadingImpl;
}

/// @nodoc
abstract class _$$HabitShowDataImplCopyWith<$Res> {
  factory _$$HabitShowDataImplCopyWith(
          _$HabitShowDataImpl value, $Res Function(_$HabitShowDataImpl) then) =
      __$$HabitShowDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HabitEntity habit});

  $HabitEntityCopyWith<$Res> get habit;
}

/// @nodoc
class __$$HabitShowDataImplCopyWithImpl<$Res>
    extends _$HabitShowStateCopyWithImpl<$Res, _$HabitShowDataImpl>
    implements _$$HabitShowDataImplCopyWith<$Res> {
  __$$HabitShowDataImplCopyWithImpl(
      _$HabitShowDataImpl _value, $Res Function(_$HabitShowDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habit = null,
  }) {
    return _then(_$HabitShowDataImpl(
      habit: null == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as HabitEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitEntityCopyWith<$Res> get habit {
    return $HabitEntityCopyWith<$Res>(_value.habit, (value) {
      return _then(_value.copyWith(habit: value));
    });
  }
}

/// @nodoc

class _$HabitShowDataImpl implements HabitShowData {
  const _$HabitShowDataImpl({required this.habit});

  @override
  final HabitEntity habit;

  @override
  String toString() {
    return 'HabitShowState.data(habit: $habit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitShowDataImpl &&
            (identical(other.habit, habit) || other.habit == habit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitShowDataImplCopyWith<_$HabitShowDataImpl> get copyWith =>
      __$$HabitShowDataImplCopyWithImpl<_$HabitShowDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HabitEntity habit) data,
    required TResult Function() failure,
  }) {
    return data(habit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HabitEntity habit)? data,
    TResult? Function()? failure,
  }) {
    return data?.call(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HabitEntity habit)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitShowLoading value) loading,
    required TResult Function(HabitShowData value) data,
    required TResult Function(HabitShowFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitShowLoading value)? loading,
    TResult? Function(HabitShowData value)? data,
    TResult? Function(HabitShowFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitShowLoading value)? loading,
    TResult Function(HabitShowData value)? data,
    TResult Function(HabitShowFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HabitShowData implements HabitShowState {
  const factory HabitShowData({required final HabitEntity habit}) =
      _$HabitShowDataImpl;

  HabitEntity get habit;
  @JsonKey(ignore: true)
  _$$HabitShowDataImplCopyWith<_$HabitShowDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HabitShowFailureImplCopyWith<$Res> {
  factory _$$HabitShowFailureImplCopyWith(_$HabitShowFailureImpl value,
          $Res Function(_$HabitShowFailureImpl) then) =
      __$$HabitShowFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitShowFailureImplCopyWithImpl<$Res>
    extends _$HabitShowStateCopyWithImpl<$Res, _$HabitShowFailureImpl>
    implements _$$HabitShowFailureImplCopyWith<$Res> {
  __$$HabitShowFailureImplCopyWithImpl(_$HabitShowFailureImpl _value,
      $Res Function(_$HabitShowFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitShowFailureImpl implements HabitShowFailure {
  const _$HabitShowFailureImpl();

  @override
  String toString() {
    return 'HabitShowState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitShowFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HabitEntity habit) data,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HabitEntity habit)? data,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HabitEntity habit)? data,
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
    required TResult Function(HabitShowLoading value) loading,
    required TResult Function(HabitShowData value) data,
    required TResult Function(HabitShowFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitShowLoading value)? loading,
    TResult? Function(HabitShowData value)? data,
    TResult? Function(HabitShowFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitShowLoading value)? loading,
    TResult Function(HabitShowData value)? data,
    TResult Function(HabitShowFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HabitShowFailure implements HabitShowState {
  const factory HabitShowFailure() = _$HabitShowFailureImpl;
}
