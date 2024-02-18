import 'package:flutter/material.dart';

import '../../../../domain/entities/entities.dart';
import '../../../widgets/weekly_calendar.dart';

class HabitTile extends StatelessWidget {
  final HabitEntity habit;
  final Function(DateTime) onTapDate;
  final VoidCallback onTapHabit;

  const HabitTile({
    required this.habit,
    required this.onTapDate,
    required this.onTapHabit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTapHabit,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    habit.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        WeeklyCalendar(
          selectedDates: habit.completedDates.toSet(),
          onTapDate: onTapDate,
        ),
      ],
    );
  }
}
