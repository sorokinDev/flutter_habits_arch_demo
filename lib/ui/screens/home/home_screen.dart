import 'package:flutter/material.dart';
import 'package:habits_arch_demo/domain/habit_state_holder.dart';
import 'package:habits_arch_demo/ui/screens/habit_create/habit_create_screen.dart';

import '../habit_show/habit_show_screen.dart';
import 'widgets/habit_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    HabitsStateHolder.instance.fetchHabits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Habit Tracker'),
      ),
      body: ListenableBuilder(
        listenable: HabitsStateHolder.instance,
        builder: (context, _) {
          final habits = HabitsStateHolder.instance.habits;
          final status = HabitsStateHolder.instance.habitsLoadingStatus;
          final bodyWidget = switch (status) {
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
                    onPressed: HabitsStateHolder.instance.fetchHabits,
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
                        builder: (_) => HabitShowScreen(habitId: habit.id),
                      ),
                    );
                  },
                  onTapDate: (date) {
                    HabitsStateHolder.instance.toggleDateForHabit(
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
