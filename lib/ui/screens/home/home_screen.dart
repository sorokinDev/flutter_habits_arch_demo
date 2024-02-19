import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habits_arch_demo/ui/screens/habit_create/habit_create_screen.dart';

import '../../../core/providers.dart';
import '../../../domain/repositories/repositories.dart';
import '../habit_show/habit_show_screen.dart';
import 'widgets/habit_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) => _HomeView(
        habitRepository: ref.watch(habitRepositoryProvider),
      ),
    );
  }
}

class _HomeView extends StatefulWidget {
  final HabitsRepository habitRepository;

  const _HomeView({
    required this.habitRepository,
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
        title: Text('Habit Tracker'),
      ),
      body: StreamBuilder(
        stream: widget.habitRepository.habitsStream,
        builder: (context, snapshot) {
          final habits = snapshot.data;

          final bodyWidget = switch (habits) {
            null when snapshot.hasError => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Error loading data'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: widget.habitRepository.fetchHabits,
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
            null => const Center(
                child: CircularProgressIndicator(),
              ),
            _ => ListView.separated(
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
                      widget.habitRepository.toggleDateForHabit(
                        habitId: habit.id,
                        date: date,
                      );
                    },
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                padding: const EdgeInsets.symmetric(vertical: 16),
              )
          };
          return bodyWidget;
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
