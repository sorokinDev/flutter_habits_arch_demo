// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? datePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitScreenStarted value) started,
    required TResult Function(HabitScreenDatePressed value) datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitScreenStarted value)? started,
    TResult? Function(HabitScreenDatePressed value)? datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitScreenStarted value)? started,
    TResult Function(HabitScreenDatePressed value)? datePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitScreenEventCopyWith<$Res> {
  factory $HabitScreenEventCopyWith(
          HabitScreenEvent value, $Res Function(HabitScreenEvent) then) =
      _$HabitScreenEventCopyWithImpl<$Res, HabitScreenEvent>;
}

/// @nodoc
class _$HabitScreenEventCopyWithImpl<$Res, $Val extends HabitScreenEvent>
    implements $HabitScreenEventCopyWith<$Res> {
  _$HabitScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HabitScreenStartedImplCopyWith<$Res> {
  factory _$$HabitScreenStartedImplCopyWith(_$HabitScreenStartedImpl value,
          $Res Function(_$HabitScreenStartedImpl) then) =
      __$$HabitScreenStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitScreenStartedImplCopyWithImpl<$Res>
    extends _$HabitScreenEventCopyWithImpl<$Res, _$HabitScreenStartedImpl>
    implements _$$HabitScreenStartedImplCopyWith<$Res> {
  __$$HabitScreenStartedImplCopyWithImpl(_$HabitScreenStartedImpl _value,
      $Res Function(_$HabitScreenStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitScreenStartedImpl implements HabitScreenStarted {
  const _$HabitScreenStartedImpl();

  @override
  String toString() {
    return 'HabitScreenEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitScreenStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) datePressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? datePressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? datePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitScreenStarted value) started,
    required TResult Function(HabitScreenDatePressed value) datePressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitScreenStarted value)? started,
    TResult? Function(HabitScreenDatePressed value)? datePressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitScreenStarted value)? started,
    TResult Function(HabitScreenDatePressed value)? datePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class HabitScreenStarted implements HabitScreenEvent {
  const factory HabitScreenStarted() = _$HabitScreenStartedImpl;
}

/// @nodoc
abstract class _$$HabitScreenDatePressedImplCopyWith<$Res> {
  factory _$$HabitScreenDatePressedImplCopyWith(
          _$HabitScreenDatePressedImpl value,
          $Res Function(_$HabitScreenDatePressedImpl) then) =
      __$$HabitScreenDatePressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$HabitScreenDatePressedImplCopyWithImpl<$Res>
    extends _$HabitScreenEventCopyWithImpl<$Res, _$HabitScreenDatePressedImpl>
    implements _$$HabitScreenDatePressedImplCopyWith<$Res> {
  __$$HabitScreenDatePressedImplCopyWithImpl(
      _$HabitScreenDatePressedImpl _value,
      $Res Function(_$HabitScreenDatePressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$HabitScreenDatePressedImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$HabitScreenDatePressedImpl implements HabitScreenDatePressed {
  const _$HabitScreenDatePressedImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HabitScreenEvent.datePressed(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitScreenDatePressedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitScreenDatePressedImplCopyWith<_$HabitScreenDatePressedImpl>
      get copyWith => __$$HabitScreenDatePressedImplCopyWithImpl<
          _$HabitScreenDatePressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) datePressed,
  }) {
    return datePressed(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? datePressed,
  }) {
    return datePressed?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? datePressed,
    required TResult orElse(),
  }) {
    if (datePressed != null) {
      return datePressed(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitScreenStarted value) started,
    required TResult Function(HabitScreenDatePressed value) datePressed,
  }) {
    return datePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitScreenStarted value)? started,
    TResult? Function(HabitScreenDatePressed value)? datePressed,
  }) {
    return datePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitScreenStarted value)? started,
    TResult Function(HabitScreenDatePressed value)? datePressed,
    required TResult orElse(),
  }) {
    if (datePressed != null) {
      return datePressed(this);
    }
    return orElse();
  }
}

abstract class HabitScreenDatePressed implements HabitScreenEvent {
  const factory HabitScreenDatePressed({required final DateTime date}) =
      _$HabitScreenDatePressedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$HabitScreenDatePressedImplCopyWith<_$HabitScreenDatePressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HabitScreenState {
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
    required TResult Function(HabitScreenLoading value) loading,
    required TResult Function(HabitScreenData value) data,
    required TResult Function(HabitScreenFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitScreenLoading value)? loading,
    TResult? Function(HabitScreenData value)? data,
    TResult? Function(HabitScreenFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitScreenLoading value)? loading,
    TResult Function(HabitScreenData value)? data,
    TResult Function(HabitScreenFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitScreenStateCopyWith<$Res> {
  factory $HabitScreenStateCopyWith(
          HabitScreenState value, $Res Function(HabitScreenState) then) =
      _$HabitScreenStateCopyWithImpl<$Res, HabitScreenState>;
}

/// @nodoc
class _$HabitScreenStateCopyWithImpl<$Res, $Val extends HabitScreenState>
    implements $HabitScreenStateCopyWith<$Res> {
  _$HabitScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HabitScreenLoadingImplCopyWith<$Res> {
  factory _$$HabitScreenLoadingImplCopyWith(_$HabitScreenLoadingImpl value,
          $Res Function(_$HabitScreenLoadingImpl) then) =
      __$$HabitScreenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitScreenLoadingImplCopyWithImpl<$Res>
    extends _$HabitScreenStateCopyWithImpl<$Res, _$HabitScreenLoadingImpl>
    implements _$$HabitScreenLoadingImplCopyWith<$Res> {
  __$$HabitScreenLoadingImplCopyWithImpl(_$HabitScreenLoadingImpl _value,
      $Res Function(_$HabitScreenLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitScreenLoadingImpl implements HabitScreenLoading {
  const _$HabitScreenLoadingImpl();

  @override
  String toString() {
    return 'HabitScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitScreenLoadingImpl);
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
    required TResult Function(HabitScreenLoading value) loading,
    required TResult Function(HabitScreenData value) data,
    required TResult Function(HabitScreenFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitScreenLoading value)? loading,
    TResult? Function(HabitScreenData value)? data,
    TResult? Function(HabitScreenFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitScreenLoading value)? loading,
    TResult Function(HabitScreenData value)? data,
    TResult Function(HabitScreenFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HabitScreenLoading implements HabitScreenState {
  const factory HabitScreenLoading() = _$HabitScreenLoadingImpl;
}

/// @nodoc
abstract class _$$HabitScreenDataImplCopyWith<$Res> {
  factory _$$HabitScreenDataImplCopyWith(_$HabitScreenDataImpl value,
          $Res Function(_$HabitScreenDataImpl) then) =
      __$$HabitScreenDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HabitEntity habit});

  $HabitEntityCopyWith<$Res> get habit;
}

/// @nodoc
class __$$HabitScreenDataImplCopyWithImpl<$Res>
    extends _$HabitScreenStateCopyWithImpl<$Res, _$HabitScreenDataImpl>
    implements _$$HabitScreenDataImplCopyWith<$Res> {
  __$$HabitScreenDataImplCopyWithImpl(
      _$HabitScreenDataImpl _value, $Res Function(_$HabitScreenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habit = null,
  }) {
    return _then(_$HabitScreenDataImpl(
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

class _$HabitScreenDataImpl implements HabitScreenData {
  const _$HabitScreenDataImpl({required this.habit});

  @override
  final HabitEntity habit;

  @override
  String toString() {
    return 'HabitScreenState.data(habit: $habit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitScreenDataImpl &&
            (identical(other.habit, habit) || other.habit == habit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitScreenDataImplCopyWith<_$HabitScreenDataImpl> get copyWith =>
      __$$HabitScreenDataImplCopyWithImpl<_$HabitScreenDataImpl>(
          this, _$identity);

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
    required TResult Function(HabitScreenLoading value) loading,
    required TResult Function(HabitScreenData value) data,
    required TResult Function(HabitScreenFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitScreenLoading value)? loading,
    TResult? Function(HabitScreenData value)? data,
    TResult? Function(HabitScreenFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitScreenLoading value)? loading,
    TResult Function(HabitScreenData value)? data,
    TResult Function(HabitScreenFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HabitScreenData implements HabitScreenState {
  const factory HabitScreenData({required final HabitEntity habit}) =
      _$HabitScreenDataImpl;

  HabitEntity get habit;
  @JsonKey(ignore: true)
  _$$HabitScreenDataImplCopyWith<_$HabitScreenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HabitScreenFailureImplCopyWith<$Res> {
  factory _$$HabitScreenFailureImplCopyWith(_$HabitScreenFailureImpl value,
          $Res Function(_$HabitScreenFailureImpl) then) =
      __$$HabitScreenFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitScreenFailureImplCopyWithImpl<$Res>
    extends _$HabitScreenStateCopyWithImpl<$Res, _$HabitScreenFailureImpl>
    implements _$$HabitScreenFailureImplCopyWith<$Res> {
  __$$HabitScreenFailureImplCopyWithImpl(_$HabitScreenFailureImpl _value,
      $Res Function(_$HabitScreenFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitScreenFailureImpl implements HabitScreenFailure {
  const _$HabitScreenFailureImpl();

  @override
  String toString() {
    return 'HabitScreenState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitScreenFailureImpl);
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
    required TResult Function(HabitScreenLoading value) loading,
    required TResult Function(HabitScreenData value) data,
    required TResult Function(HabitScreenFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitScreenLoading value)? loading,
    TResult? Function(HabitScreenData value)? data,
    TResult? Function(HabitScreenFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitScreenLoading value)? loading,
    TResult Function(HabitScreenData value)? data,
    TResult Function(HabitScreenFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HabitScreenFailure implements HabitScreenState {
  const factory HabitScreenFailure() = _$HabitScreenFailureImpl;
}
