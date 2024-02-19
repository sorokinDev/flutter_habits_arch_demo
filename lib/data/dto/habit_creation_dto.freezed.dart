// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_creation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitCreationDto {
  String get title => throw _privateConstructorUsedError;
  Set<DateTime> get completedDates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitCreationDtoCopyWith<HabitCreationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCreationDtoCopyWith<$Res> {
  factory $HabitCreationDtoCopyWith(
          HabitCreationDto value, $Res Function(HabitCreationDto) then) =
      _$HabitCreationDtoCopyWithImpl<$Res, HabitCreationDto>;
  @useResult
  $Res call({String title, Set<DateTime> completedDates});
}

/// @nodoc
class _$HabitCreationDtoCopyWithImpl<$Res, $Val extends HabitCreationDto>
    implements $HabitCreationDtoCopyWith<$Res> {
  _$HabitCreationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? completedDates = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$HabitCreationDtoImplCopyWith<$Res>
    implements $HabitCreationDtoCopyWith<$Res> {
  factory _$$HabitCreationDtoImplCopyWith(_$HabitCreationDtoImpl value,
          $Res Function(_$HabitCreationDtoImpl) then) =
      __$$HabitCreationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Set<DateTime> completedDates});
}

/// @nodoc
class __$$HabitCreationDtoImplCopyWithImpl<$Res>
    extends _$HabitCreationDtoCopyWithImpl<$Res, _$HabitCreationDtoImpl>
    implements _$$HabitCreationDtoImplCopyWith<$Res> {
  __$$HabitCreationDtoImplCopyWithImpl(_$HabitCreationDtoImpl _value,
      $Res Function(_$HabitCreationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? completedDates = null,
  }) {
    return _then(_$HabitCreationDtoImpl(
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

class _$HabitCreationDtoImpl implements _HabitCreationDto {
  const _$HabitCreationDtoImpl(
      {required this.title, final Set<DateTime> completedDates = const {}})
      : _completedDates = completedDates;

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
    return 'HabitCreationDto(title: $title, completedDates: $completedDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitCreationDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._completedDates, _completedDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_completedDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitCreationDtoImplCopyWith<_$HabitCreationDtoImpl> get copyWith =>
      __$$HabitCreationDtoImplCopyWithImpl<_$HabitCreationDtoImpl>(
          this, _$identity);
}

abstract class _HabitCreationDto implements HabitCreationDto {
  const factory _HabitCreationDto(
      {required final String title,
      final Set<DateTime> completedDates}) = _$HabitCreationDtoImpl;

  @override
  String get title;
  @override
  Set<DateTime> get completedDates;
  @override
  @JsonKey(ignore: true)
  _$$HabitCreationDtoImplCopyWith<_$HabitCreationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
