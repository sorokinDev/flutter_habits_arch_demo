// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitCreationEvent {
  String get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitCreationSubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitCreationSubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitCreationSubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitCreationEventCopyWith<HabitCreationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCreationEventCopyWith<$Res> {
  factory $HabitCreationEventCopyWith(
          HabitCreationEvent value, $Res Function(HabitCreationEvent) then) =
      _$HabitCreationEventCopyWithImpl<$Res, HabitCreationEvent>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$HabitCreationEventCopyWithImpl<$Res, $Val extends HabitCreationEvent>
    implements $HabitCreationEventCopyWith<$Res> {
  _$HabitCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitCreationSubmitPressedImplCopyWith<$Res>
    implements $HabitCreationEventCopyWith<$Res> {
  factory _$$HabitCreationSubmitPressedImplCopyWith(
          _$HabitCreationSubmitPressedImpl value,
          $Res Function(_$HabitCreationSubmitPressedImpl) then) =
      __$$HabitCreationSubmitPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$HabitCreationSubmitPressedImplCopyWithImpl<$Res>
    extends _$HabitCreationEventCopyWithImpl<$Res,
        _$HabitCreationSubmitPressedImpl>
    implements _$$HabitCreationSubmitPressedImplCopyWith<$Res> {
  __$$HabitCreationSubmitPressedImplCopyWithImpl(
      _$HabitCreationSubmitPressedImpl _value,
      $Res Function(_$HabitCreationSubmitPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$HabitCreationSubmitPressedImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HabitCreationSubmitPressedImpl implements HabitCreationSubmitPressed {
  const _$HabitCreationSubmitPressedImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'HabitCreationEvent.submitPressed(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitCreationSubmitPressedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitCreationSubmitPressedImplCopyWith<_$HabitCreationSubmitPressedImpl>
      get copyWith => __$$HabitCreationSubmitPressedImplCopyWithImpl<
          _$HabitCreationSubmitPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) submitPressed,
  }) {
    return submitPressed(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? submitPressed,
  }) {
    return submitPressed?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitCreationSubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitCreationSubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitCreationSubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class HabitCreationSubmitPressed implements HabitCreationEvent {
  const factory HabitCreationSubmitPressed({required final String title}) =
      _$HabitCreationSubmitPressedImpl;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$HabitCreationSubmitPressedImplCopyWith<_$HabitCreationSubmitPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HabitCreationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() failure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function()? failure,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitCreationInitial value) initial,
    required TResult Function(HabitCreationProgress value) progress,
    required TResult Function(HabitCreationFailure value) failure,
    required TResult Function(HabitCreationSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitCreationInitial value)? initial,
    TResult? Function(HabitCreationProgress value)? progress,
    TResult? Function(HabitCreationFailure value)? failure,
    TResult? Function(HabitCreationSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitCreationInitial value)? initial,
    TResult Function(HabitCreationProgress value)? progress,
    TResult Function(HabitCreationFailure value)? failure,
    TResult Function(HabitCreationSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCreationStateCopyWith<$Res> {
  factory $HabitCreationStateCopyWith(
          HabitCreationState value, $Res Function(HabitCreationState) then) =
      _$HabitCreationStateCopyWithImpl<$Res, HabitCreationState>;
}

/// @nodoc
class _$HabitCreationStateCopyWithImpl<$Res, $Val extends HabitCreationState>
    implements $HabitCreationStateCopyWith<$Res> {
  _$HabitCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HabitCreationInitialImplCopyWith<$Res> {
  factory _$$HabitCreationInitialImplCopyWith(_$HabitCreationInitialImpl value,
          $Res Function(_$HabitCreationInitialImpl) then) =
      __$$HabitCreationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitCreationInitialImplCopyWithImpl<$Res>
    extends _$HabitCreationStateCopyWithImpl<$Res, _$HabitCreationInitialImpl>
    implements _$$HabitCreationInitialImplCopyWith<$Res> {
  __$$HabitCreationInitialImplCopyWithImpl(_$HabitCreationInitialImpl _value,
      $Res Function(_$HabitCreationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitCreationInitialImpl implements HabitCreationInitial {
  const _$HabitCreationInitialImpl();

  @override
  String toString() {
    return 'HabitCreationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitCreationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function()? failure,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitCreationInitial value) initial,
    required TResult Function(HabitCreationProgress value) progress,
    required TResult Function(HabitCreationFailure value) failure,
    required TResult Function(HabitCreationSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitCreationInitial value)? initial,
    TResult? Function(HabitCreationProgress value)? progress,
    TResult? Function(HabitCreationFailure value)? failure,
    TResult? Function(HabitCreationSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitCreationInitial value)? initial,
    TResult Function(HabitCreationProgress value)? progress,
    TResult Function(HabitCreationFailure value)? failure,
    TResult Function(HabitCreationSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HabitCreationInitial implements HabitCreationState {
  const factory HabitCreationInitial() = _$HabitCreationInitialImpl;
}

/// @nodoc
abstract class _$$HabitCreationProgressImplCopyWith<$Res> {
  factory _$$HabitCreationProgressImplCopyWith(
          _$HabitCreationProgressImpl value,
          $Res Function(_$HabitCreationProgressImpl) then) =
      __$$HabitCreationProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitCreationProgressImplCopyWithImpl<$Res>
    extends _$HabitCreationStateCopyWithImpl<$Res, _$HabitCreationProgressImpl>
    implements _$$HabitCreationProgressImplCopyWith<$Res> {
  __$$HabitCreationProgressImplCopyWithImpl(_$HabitCreationProgressImpl _value,
      $Res Function(_$HabitCreationProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitCreationProgressImpl implements HabitCreationProgress {
  const _$HabitCreationProgressImpl();

  @override
  String toString() {
    return 'HabitCreationState.progress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitCreationProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return progress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function()? failure,
    TResult? Function()? success,
  }) {
    return progress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? failure,
    TResult Function()? success,
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
    required TResult Function(HabitCreationInitial value) initial,
    required TResult Function(HabitCreationProgress value) progress,
    required TResult Function(HabitCreationFailure value) failure,
    required TResult Function(HabitCreationSuccess value) success,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitCreationInitial value)? initial,
    TResult? Function(HabitCreationProgress value)? progress,
    TResult? Function(HabitCreationFailure value)? failure,
    TResult? Function(HabitCreationSuccess value)? success,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitCreationInitial value)? initial,
    TResult Function(HabitCreationProgress value)? progress,
    TResult Function(HabitCreationFailure value)? failure,
    TResult Function(HabitCreationSuccess value)? success,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class HabitCreationProgress implements HabitCreationState {
  const factory HabitCreationProgress() = _$HabitCreationProgressImpl;
}

/// @nodoc
abstract class _$$HabitCreationFailureImplCopyWith<$Res> {
  factory _$$HabitCreationFailureImplCopyWith(_$HabitCreationFailureImpl value,
          $Res Function(_$HabitCreationFailureImpl) then) =
      __$$HabitCreationFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitCreationFailureImplCopyWithImpl<$Res>
    extends _$HabitCreationStateCopyWithImpl<$Res, _$HabitCreationFailureImpl>
    implements _$$HabitCreationFailureImplCopyWith<$Res> {
  __$$HabitCreationFailureImplCopyWithImpl(_$HabitCreationFailureImpl _value,
      $Res Function(_$HabitCreationFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitCreationFailureImpl implements HabitCreationFailure {
  const _$HabitCreationFailureImpl();

  @override
  String toString() {
    return 'HabitCreationState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitCreationFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function()? failure,
    TResult? Function()? success,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? failure,
    TResult Function()? success,
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
    required TResult Function(HabitCreationInitial value) initial,
    required TResult Function(HabitCreationProgress value) progress,
    required TResult Function(HabitCreationFailure value) failure,
    required TResult Function(HabitCreationSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitCreationInitial value)? initial,
    TResult? Function(HabitCreationProgress value)? progress,
    TResult? Function(HabitCreationFailure value)? failure,
    TResult? Function(HabitCreationSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitCreationInitial value)? initial,
    TResult Function(HabitCreationProgress value)? progress,
    TResult Function(HabitCreationFailure value)? failure,
    TResult Function(HabitCreationSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HabitCreationFailure implements HabitCreationState {
  const factory HabitCreationFailure() = _$HabitCreationFailureImpl;
}

/// @nodoc
abstract class _$$HabitCreationSuccessImplCopyWith<$Res> {
  factory _$$HabitCreationSuccessImplCopyWith(_$HabitCreationSuccessImpl value,
          $Res Function(_$HabitCreationSuccessImpl) then) =
      __$$HabitCreationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitCreationSuccessImplCopyWithImpl<$Res>
    extends _$HabitCreationStateCopyWithImpl<$Res, _$HabitCreationSuccessImpl>
    implements _$$HabitCreationSuccessImplCopyWith<$Res> {
  __$$HabitCreationSuccessImplCopyWithImpl(_$HabitCreationSuccessImpl _value,
      $Res Function(_$HabitCreationSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitCreationSuccessImpl implements HabitCreationSuccess {
  const _$HabitCreationSuccessImpl();

  @override
  String toString() {
    return 'HabitCreationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitCreationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function()? failure,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitCreationInitial value) initial,
    required TResult Function(HabitCreationProgress value) progress,
    required TResult Function(HabitCreationFailure value) failure,
    required TResult Function(HabitCreationSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HabitCreationInitial value)? initial,
    TResult? Function(HabitCreationProgress value)? progress,
    TResult? Function(HabitCreationFailure value)? failure,
    TResult? Function(HabitCreationSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitCreationInitial value)? initial,
    TResult Function(HabitCreationProgress value)? progress,
    TResult Function(HabitCreationFailure value)? failure,
    TResult Function(HabitCreationSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HabitCreationSuccess implements HabitCreationState {
  const factory HabitCreationSuccess() = _$HabitCreationSuccessImpl;
}
