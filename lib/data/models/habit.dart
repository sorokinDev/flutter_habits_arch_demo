import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit.freezed.dart';

@freezed
class Habit with _$Habit {
  factory Habit({
    required String id,
    required String title,
    @Default({}) Set<DateTime> completedDates,
  }) = _Habit;
}
