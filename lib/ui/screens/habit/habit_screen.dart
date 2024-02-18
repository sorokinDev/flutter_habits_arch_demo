import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/repositories.dart';
import '../../widgets/weekly_calendar.dart';
import 'habit_screen_bloc.dart';

class HabitScreen extends StatelessWidget {
  final String habitId;

  const HabitScreen({
    required this.habitId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HabitScreenBloc(
        context.read<HabitsRepository>(),
        habitId: habitId,
      )..add(const HabitScreenEvent.started()),
      child: const _HabitScreenView(),
    );
  }
}

class _HabitScreenView extends StatelessWidget {
  const _HabitScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const _Title(),
      ),
      body: BlocBuilder<HabitScreenBloc, HabitScreenState>(
        builder: (context, state) => switch (state) {
          HabitScreenLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          HabitScreenFailure() => const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Error loading data'),
                ],
              ),
            ),
          HabitScreenData(:final habit) => Column(
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
                    context
                        .read<HabitScreenBloc>()
                        .add(HabitScreenDatePressed(date: date));
                  },
                ),
              ],
            ),
        },
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HabitScreenBloc, HabitScreenState, String?>(
      selector: (state) => switch (state) {
        HabitScreenData(:final habit) => habit.title,
        _ => null,
      },
      builder: (context, title) {
        return Text(title ?? 'Habit');
      },
    );
  }
}
