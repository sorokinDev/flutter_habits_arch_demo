import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habits_arch_demo/ui/screens/habit_create/habit_create_screen.dart';
import 'package:habits_arch_demo/ui/screens/home/home_bloc.dart';

import '../habit_show/habit_show_screen.dart';
import 'home_state.dart';
import 'widgets/habit_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) => BlocProvider.value(
        value: ref.watch(homeBlocProvider)..started(),
        child: const _HomeView(),
      ),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView({
    super.key,
  });

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Habit Tracker'),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => switch (state) {
          HomeProgress() => const Center(
            child: CircularProgressIndicator(),
          ),
          HomeFailure() => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Error loading data'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.bloc.retryLoading();
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
          HomeData(:final habits) => ListView.separated(
            itemCount: habits.length,
            itemBuilder: (context, index) {
              final habit = habits[index];
              return HabitTile(
                habit: habit,
                onTapHabit: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HabitShowScreen(habitId: habit.id),
                    ),
                  );
                },
                onTapDate: (date) {
                  context.bloc.datePressed(habitId: habit.id, date: date);
                },
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HabitCreateScreen(),
            ),
          );
        },
        tooltip: 'Add Habit',
        child: const Icon(Icons.add),
      ),
    );
  }
}

extension _ContextX on BuildContext {
  HomeBloc get bloc => read<HomeBloc>();
}
