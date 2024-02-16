class Habit {
  String id;
  String title;
  Set<DateTime> completedDates;

  Habit({
    required this.id,
    required this.title,
    required this.completedDates,
  });
}