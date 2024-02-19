import '../../data/dto/dtos.dart';
import '../entities/entities.dart';

class HabitMapper {
  HabitEntity mapHabitDtoToEntity(HabitDto dto) => HabitEntity(
    id: dto.id,
    title: dto.title,
    completedDates: dto.completedDates,
  );

  HabitDto mapHabitEntityToDto(HabitEntity entity) => HabitDto(
    id: entity.id,
    title: entity.title,
    completedDates: entity.completedDates,
  );

  HabitCreationDto mapHabitCreationEntityToDto(HabitCreationEntity entity) =>
      HabitCreationDto(
        title: entity.title,
      );
}
