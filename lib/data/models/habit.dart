class Habit {
  final String id;
  String title;
  Set<DateTime> completedDates;

  Habit({
    required this.id,
    required this.title,
    this.completedDates = const <DateTime>{},
  });
}