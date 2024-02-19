// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_creation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitCreationEntity {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitCreationEntityCopyWith<HabitCreationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCreationEntityCopyWith<$Res> {
  factory $HabitCreationEntityCopyWith(
          HabitCreationEntity value, $Res Function(HabitCreationEntity) then) =
      _$HabitCreationEntityCopyWithImpl<$Res, HabitCreationEntity>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$HabitCreationEntityCopyWithImpl<$Res, $Val extends HabitCreationEntity>
    implements $HabitCreationEntityCopyWith<$Res> {
  _$HabitCreationEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$HabitCreationEntityImplCopyWith<$Res>
    implements $HabitCreationEntityCopyWith<$Res> {
  factory _$$HabitCreationEntityImplCopyWith(_$HabitCreationEntityImpl value,
          $Res Function(_$HabitCreationEntityImpl) then) =
      __$$HabitCreationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$HabitCreationEntityImplCopyWithImpl<$Res>
    extends _$HabitCreationEntityCopyWithImpl<$Res, _$HabitCreationEntityImpl>
    implements _$$HabitCreationEntityImplCopyWith<$Res> {
  __$$HabitCreationEntityImplCopyWithImpl(_$HabitCreationEntityImpl _value,
      $Res Function(_$HabitCreationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$HabitCreationEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HabitCreationEntityImpl implements _HabitCreationEntity {
  const _$HabitCreationEntityImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'HabitCreationEntity(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitCreationEntityImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitCreationEntityImplCopyWith<_$HabitCreationEntityImpl> get copyWith =>
      __$$HabitCreationEntityImplCopyWithImpl<_$HabitCreationEntityImpl>(
          this, _$identity);
}

abstract class _HabitCreationEntity implements HabitCreationEntity {
  const factory _HabitCreationEntity({required final String title}) =
      _$HabitCreationEntityImpl;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$HabitCreationEntityImplCopyWith<_$HabitCreationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
