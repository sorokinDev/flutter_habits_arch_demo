// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_show_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitShowEvent {
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
    required TResult Function(HabitShowStarted value) started,
    required TResult Function(HabitShowDatePressed value) datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitShowStarted value)? started,
    TResult? Function(HabitShowDatePressed value)? datePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitShowStarted value)? started,
    TResult Function(HabitShowDatePressed value)? datePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitShowEventCopyWith<$Res> {
  factory $HabitShowEventCopyWith(
          HabitShowEvent value, $Res Function(HabitShowEvent) then) =
      _$HabitShowEventCopyWithImpl<$Res, HabitShowEvent>;
}

/// @nodoc
class _$HabitShowEventCopyWithImpl<$Res, $Val extends HabitShowEvent>
    implements $HabitShowEventCopyWith<$Res> {
  _$HabitShowEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HabitShowStartedImplCopyWith<$Res> {
  factory _$$HabitShowStartedImplCopyWith(_$HabitShowStartedImpl value,
          $Res Function(_$HabitShowStartedImpl) then) =
      __$$HabitShowStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitShowStartedImplCopyWithImpl<$Res>
    extends _$HabitShowEventCopyWithImpl<$Res, _$HabitShowStartedImpl>
    implements _$$HabitShowStartedImplCopyWith<$Res> {
  __$$HabitShowStartedImplCopyWithImpl(_$HabitShowStartedImpl _value,
      $Res Function(_$HabitShowStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitShowStartedImpl implements HabitShowStarted {
  const _$HabitShowStartedImpl();

  @override
  String toString() {
    return 'HabitShowEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitShowStartedImpl);
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
    required TResult Function(HabitShowStarted value) started,
    required TResult Function(HabitShowDatePressed value) datePressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitShowStarted value)? started,
    TResult? Function(HabitShowDatePressed value)? datePressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitShowStarted value)? started,
    TResult Function(HabitShowDatePressed value)? datePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class HabitShowStarted implements HabitShowEvent {
  const factory HabitShowStarted() = _$HabitShowStartedImpl;
}

/// @nodoc
abstract class _$$HabitShowDatePressedImplCopyWith<$Res> {
  factory _$$HabitShowDatePressedImplCopyWith(_$HabitShowDatePressedImpl value,
          $Res Function(_$HabitShowDatePressedImpl) then) =
      __$$HabitShowDatePressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$HabitShowDatePressedImplCopyWithImpl<$Res>
    extends _$HabitShowEventCopyWithImpl<$Res, _$HabitShowDatePressedImpl>
    implements _$$HabitShowDatePressedImplCopyWith<$Res> {
  __$$HabitShowDatePressedImplCopyWithImpl(_$HabitShowDatePressedImpl _value,
      $Res Function(_$HabitShowDatePressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$HabitShowDatePressedImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$HabitShowDatePressedImpl implements HabitShowDatePressed {
  const _$HabitShowDatePressedImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HabitShowEvent.datePressed(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitShowDatePressedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitShowDatePressedImplCopyWith<_$HabitShowDatePressedImpl>
      get copyWith =>
          __$$HabitShowDatePressedImplCopyWithImpl<_$HabitShowDatePressedImpl>(
              this, _$identity);

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
    required TResult Function(HabitShowStarted value) started,
    required TResult Function(HabitShowDatePressed value) datePressed,
  }) {
    return datePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitShowStarted value)? started,
    TResult? Function(HabitShowDatePressed value)? datePressed,
  }) {
    return datePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitShowStarted value)? started,
    TResult Function(HabitShowDatePressed value)? datePressed,
    required TResult orElse(),
  }) {
    if (datePressed != null) {
      return datePressed(this);
    }
    return orElse();
  }
}

abstract class HabitShowDatePressed implements HabitShowEvent {
  const factory HabitShowDatePressed({required final DateTime date}) =
      _$HabitShowDatePressedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$HabitShowDatePressedImplCopyWith<_$HabitShowDatePressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
