// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Set<DateTime> get completedDates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitDtoCopyWith<HabitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitDtoCopyWith<$Res> {
  factory $HabitDtoCopyWith(HabitDto value, $Res Function(HabitDto) then) =
      _$HabitDtoCopyWithImpl<$Res, HabitDto>;
  @useResult
  $Res call({String id, String title, Set<DateTime> completedDates});
}

/// @nodoc
class _$HabitDtoCopyWithImpl<$Res, $Val extends HabitDto>
    implements $HabitDtoCopyWith<$Res> {
  _$HabitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? completedDates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completedDates: null == completedDates
          ? _value.completedDates
          : completedDates // ignore: cast_nullable_to_non_nullable
              as Set<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitDtoImplCopyWith<$Res>
    implements $HabitDtoCopyWith<$Res> {
  factory _$$HabitDtoImplCopyWith(
          _$HabitDtoImpl value, $Res Function(_$HabitDtoImpl) then) =
      __$$HabitDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, Set<DateTime> completedDates});
}

/// @nodoc
class __$$HabitDtoImplCopyWithImpl<$Res>
    extends _$HabitDtoCopyWithImpl<$Res, _$HabitDtoImpl>
    implements _$$HabitDtoImplCopyWith<$Res> {
  __$$HabitDtoImplCopyWithImpl(
      _$HabitDtoImpl _value, $Res Function(_$HabitDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? completedDates = null,
  }) {
    return _then(_$HabitDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completedDates: null == completedDates
          ? _value._completedDates
          : completedDates // ignore: cast_nullable_to_non_nullable
              as Set<DateTime>,
    ));
  }
}

/// @nodoc

class _$HabitDtoImpl implements _HabitDto {
  _$HabitDtoImpl(
      {required this.id,
      required this.title,
      final Set<DateTime> completedDates = const {}})
      : _completedDates = completedDates;

  @override
  final String id;
  @override
  final String title;
  final Set<DateTime> _completedDates;
  @override
  @JsonKey()
  Set<DateTime> get completedDates {
    if (_completedDates is EqualUnmodifiableSetView) return _completedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_completedDates);
  }

  @override
  String toString() {
    return 'HabitDto(id: $id, title: $title, completedDates: $completedDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._completedDates, _completedDates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_completedDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitDtoImplCopyWith<_$HabitDtoImpl> get copyWith =>
      __$$HabitDtoImplCopyWithImpl<_$HabitDtoImpl>(this, _$identity);
}

abstract class _HabitDto implements HabitDto {
  factory _HabitDto(
      {required final String id,
      required final String title,
      final Set<DateTime> completedDates}) = _$HabitDtoImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  Set<DateTime> get completedDates;
  @override
  @JsonKey(ignore: true)
  _$$HabitDtoImplCopyWith<_$HabitDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
