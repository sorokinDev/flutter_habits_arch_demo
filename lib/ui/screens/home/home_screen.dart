import 'package:flutter/material.dart';
import 'package:habits_arch_demo/domain/habits_state/habits_state_holder.dart';
import 'package:habits_arch_demo/ui/screens/habit_create/habit_create_screen.dart';
import 'package:habits_arch_demo/ui/screens/habit/habit_screen.dart';

import '../../../core/di/di.dart';
import '../../../data/models/habit.dart';
import 'widgets/habit_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HabitsStateHolder _habitsStateHolder;

  @override
  void initState() {
    super.initState();
    _habitsStateHolder = Locator.habitsStateHolder;
    _habitsStateHolder.fetchHabits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Habit'),
      ),
      body: ListenableBuilder(
        listenable: _habitsStateHolder,
        builder: (context, _) {
          final habits = _habitsStateHolder.habits;
          final bodyWidget = switch (_habitsStateHolder.habitsLoadingStatus) {
            HabitsLoadingStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            HabitsLoadingStatus.error => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Error loading data'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _habitsStateHolder.fetchHabits,
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            HabitsLoadingStatus.data => ListView.separated(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  final habit = habits[index];
                  return HabitTile(
                    habit: habit,
                    onTapHabit: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HabitScreen(habitId: habit.id),
                        ),
                      );
                    },
                    onTapDate: (date) {
                      _habitsStateHolder.toggleDateForHabit(
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
