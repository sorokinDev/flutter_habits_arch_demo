import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habits_arch_demo/domain/repositories/habit_repository.dart';

import '../../../core/providers.dart';
import '../../widgets/weekly_calendar.dart';

class HabitShowScreen extends StatelessWidget {
  final String habitId;

  const HabitShowScreen({
    required this.habitId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) => _HabitShowView(
        habitRepository: ref.watch(habitRepositoryProvider),
        habitId: habitId,
      ),
    );
  }
}

class _HabitShowView extends StatefulWidget {
  final HabitsRepository habitRepository;
  final String habitId;

  const _HabitShowView({
    required this.habitRepository,
    required this.habitId,
    super.key,
  });

  @override
  State<_HabitShowView> createState() => _HabitShowViewState();
}

class _HabitShowViewState extends State<_HabitShowView> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget.habitRepository.habitByIdStream(widget.habitId),
        builder: (context, snapshot) {
          final habit = snapshot.data;
          if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          }
          if (habit == null) {
            return const Center(
              child: CircularProgressIndicator(),
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
                    widget.habitRepository.toggleDateForHabit(
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
