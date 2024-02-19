import 'package:flutter/material.dart';
import 'package:habits_arch_demo/domain/habit_state_holder.dart';

import '../../widgets/weekly_calendar.dart';

class HabitShowScreen extends StatefulWidget {
  final String habitId;

  const HabitShowScreen({
    required this.habitId,
    super.key,
  });

  @override
  State<HabitShowScreen> createState() => _HabitShowScreenState();
}

class _HabitShowScreenState extends State<HabitShowScreen> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: HabitsStateHolder.instance,
        builder: (context, _) {
          final habit = HabitsStateHolder.instance.getHabitById(widget.habitId);
          if (habit == null) {
            return Center(
              child: Text('Error, no such habit'),
            );
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(habit.title),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Habit progress: ${habit.completedDates.length}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                WeeklyCalendar(
                  selectedDates: habit.completedDates,
                  onTapDate: (date) {
                    HabitsStateHolder.instance.toggleDateForHabit(
                      habitId: habit.id,
                      date: date,
                    );
                  },
                ),
              ],
            ),
          );
        });
  }
}
