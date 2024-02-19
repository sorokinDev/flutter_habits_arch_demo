import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habits_arch_demo/domain/repositories/habit_repository.dart';

import '../../../core/providers.dart';
import '../../widgets/weekly_calendar.dart';
import 'habit_show_bloc.dart';
import 'habit_show_events.dart';
import 'habit_show_state.dart';

class HabitShowScreen extends StatelessWidget {
  final String habitId;

  const HabitShowScreen({
    required this.habitId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return BlocProvider.value(
        value: ref.watch(habitShowBlocProvider(habitId))
          ..add(const HabitShowEvent.started()),
        child: const _HabitShowView(),
      );
    });
  }
}

class _HabitShowView extends StatelessWidget {
  const _HabitShowView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const _Title(),
      ),
      body: BlocBuilder<HabitShowBloc, HabitShowState>(
        builder: (context, state) => switch (state) {
          HabitShowLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          HabitShowFailure() => const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Error loading data'),
                ],
              ),
            ),
          HabitShowData(:final habit) => Column(
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
                    context.bloc.add(HabitShowDatePressed(date: date));
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
    return BlocSelector<HabitShowBloc, HabitShowState, String?>(
      selector: (state) => switch (state) {
        HabitShowData(:final habit) => habit.title,
        _ => null,
      },
      builder: (context, title) {
        return Text(title ?? 'Habit');
      },
    );
  }
}

extension _ContextX on BuildContext {
  HabitShowBloc get bloc => read<HabitShowBloc>();
}
