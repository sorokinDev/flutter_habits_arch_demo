import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_creation_entity.freezed.dart';

@freezed
class HabitCreationEntity with _$HabitCreationEntity {
  const factory HabitCreationEntity({
    required String title,
  }) = _HabitCreationEntity;
}