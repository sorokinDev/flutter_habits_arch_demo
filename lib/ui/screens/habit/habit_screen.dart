import 'package:flutter/material.dart';

import '../../../core/di/di.dart';
import '../../../data/models/habit.dart';
import '../../../domain/habits_state/habits_state_holder.dart';
import '../../widgets/weekly_calendar.dart';

class HabitScreen extends StatefulWidget {
  final String habitId;

  const HabitScreen({
    required this.habitId,
    super.key,
  });

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  late final HabitsStateHolder _habitsStateHolder;

  @override
  void initState() {
    super.initState();
    _habitsStateHolder = Locator.habitsStateHolder;
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _habitsStateHolder,
      builder: (context, _) {
        final habit = _habitsStateHolder.habits
            .firstWhere((element) => element.id == widget.habitId);
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
                  _habitsStateHolder.toggleDateForHabit(
                    habitId: habit.id,
                    date: date,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
