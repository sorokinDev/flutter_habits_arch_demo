// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() retry,
    required TResult Function(String habitId, DateTime date) datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? retry,
    TResult? Function(String habitId, DateTime date)? datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? retry,
    TResult Function(String habitId, DateTime date)? datePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) started,
    required TResult Function(HomeRetry value) retry,
    required TResult Function(HomeDatePressed value) datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? started,
    TResult? Function(HomeRetry value)? retry,
    TResult? Function(HomeDatePressed value)? datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? started,
    TResult Function(HomeRetry value)? retry,
    TResult Function(HomeDatePressed value)? datePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStartedImplCopyWith<$Res> {
  factory _$$HomeStartedImplCopyWith(
          _$HomeStartedImpl value, $Res Function(_$HomeStartedImpl) then) =
      __$$HomeStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeStartedImpl>
    implements _$$HomeStartedImplCopyWith<$Res> {
  __$$HomeStartedImplCopyWithImpl(
      _$HomeStartedImpl _value, $Res Function(_$HomeStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStartedImpl implements HomeStarted {
  const _$HomeStartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() retry,
    required TResult Function(String habitId, DateTime date) datePressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? retry,
    TResult? Function(String habitId, DateTime date)? datePressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? retry,
    TResult Function(String habitId, DateTime date)? datePressed,
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
    required TResult Function(HomeStarted value) started,
    required TResult Function(HomeRetry value) retry,
    required TResult Function(HomeDatePressed value) datePressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? started,
    TResult? Function(HomeRetry value)? retry,
    TResult? Function(HomeDatePressed value)? datePressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? started,
    TResult Function(HomeRetry value)? retry,
    TResult Function(HomeDatePressed value)? datePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class HomeStarted implements HomeEvent {
  const factory HomeStarted() = _$HomeStartedImpl;
}

/// @nodoc
abstract class _$$HomeRetryImplCopyWith<$Res> {
  factory _$$HomeRetryImplCopyWith(
          _$HomeRetryImpl value, $Res Function(_$HomeRetryImpl) then) =
      __$$HomeRetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeRetryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeRetryImpl>
    implements _$$HomeRetryImplCopyWith<$Res> {
  __$$HomeRetryImplCopyWithImpl(
      _$HomeRetryImpl _value, $Res Function(_$HomeRetryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeRetryImpl implements HomeRetry {
  const _$HomeRetryImpl();

  @override
  String toString() {
    return 'HomeEvent.retry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeRetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() retry,
    required TResult Function(String habitId, DateTime date) datePressed,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? retry,
    TResult? Function(String habitId, DateTime date)? datePressed,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? retry,
    TResult Function(String habitId, DateTime date)? datePressed,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) started,
    required TResult Function(HomeRetry value) retry,
    required TResult Function(HomeDatePressed value) datePressed,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? started,
    TResult? Function(HomeRetry value)? retry,
    TResult? Function(HomeDatePressed value)? datePressed,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? started,
    TResult Function(HomeRetry value)? retry,
    TResult Function(HomeDatePressed value)? datePressed,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class HomeRetry implements HomeEvent {
  const factory HomeRetry() = _$HomeRetryImpl;
}

/// @nodoc
abstract class _$$HomeDatePressedImplCopyWith<$Res> {
  factory _$$HomeDatePressedImplCopyWith(_$HomeDatePressedImpl value,
          $Res Function(_$HomeDatePressedImpl) then) =
      __$$HomeDatePressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String habitId, DateTime date});
}

/// @nodoc
class __$$HomeDatePressedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeDatePressedImpl>
    implements _$$HomeDatePressedImplCopyWith<$Res> {
  __$$HomeDatePressedImplCopyWithImpl(
      _$HomeDatePressedImpl _value, $Res Function(_$HomeDatePressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? date = null,
  }) {
    return _then(_$HomeDatePressedImpl(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$HomeDatePressedImpl implements HomeDatePressed {
  const _$HomeDatePressedImpl({required this.habitId, required this.date});

  @override
  final String habitId;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'HomeEvent.datePressed(habitId: $habitId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDatePressedImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDatePressedImplCopyWith<_$HomeDatePressedImpl> get copyWith =>
      __$$HomeDatePressedImplCopyWithImpl<_$HomeDatePressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() retry,
    required TResult Function(String habitId, DateTime date) datePressed,
  }) {
    return datePressed(habitId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? retry,
    TResult? Function(String habitId, DateTime date)? datePressed,
  }) {
    return datePressed?.call(habitId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? retry,
    TResult Function(String habitId, DateTime date)? datePressed,
    required TResult orElse(),
  }) {
    if (datePressed != null) {
      return datePressed(habitId, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) started,
    required TResult Function(HomeRetry value) retry,
    required TResult Function(HomeDatePressed value) datePressed,
  }) {
    return datePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? started,
    TResult? Function(HomeRetry value)? retry,
    TResult? Function(HomeDatePressed value)? datePressed,
  }) {
    return datePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? started,
    TResult Function(HomeRetry value)? retry,
    TResult Function(HomeDatePressed value)? datePressed,
    required TResult orElse(),
  }) {
    if (datePressed != null) {
      return datePressed(this);
    }
    return orElse();
  }
}

abstract class HomeDatePressed implements HomeEvent {
  const factory HomeDatePressed(
      {required final String habitId,
      required final DateTime date}) = _$HomeDatePressedImpl;

  String get habitId;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$HomeDatePressedImplCopyWith<_$HomeDatePressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
