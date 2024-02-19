import 'package:flutter/material.dart';
import 'package:habits_arch_demo/habit_create_screen.dart';
import 'package:habits_arch_demo/habit_screen.dart';

import 'habit.dart';
import 'habit_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomePageStatus _pageStatus = _HomePageStatus.loading;
  List<Habit> _habits = [];

  @override
  void initState() {
    super.initState();
    _loadHabits();
  }

  @override
  Widget build(BuildContext context) {
    final bodyWidget = switch (_pageStatus) {
      _HomePageStatus.loading => const Center(
          child: CircularProgressIndicator(),
        ),
      _HomePageStatus.error => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Error loading data'),
              SizedBox(height: 16),
              ElevatedButton(onPressed: _loadHabits, child: Text('Retry')),
            ],
          ),
        ),
      _HomePageStatus.data => ListView.separated(
          itemCount: _habits.length,
          itemBuilder: (context, index) {
            final habit = _habits[index];
            return HabitTile(
              habit: habit,
              onTapHabit: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HabitScreen(habit: habit),
                  ),
                );
                setState(() {});
              },
              onTapDate: (date) {
                setState(() {
                  if (habit.completedDates.contains(date)) {
                    habit.completedDates.remove(date);
                  } else {
                    habit.completedDates.add(date);
                  }
                });
              },
            );
          },
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          padding: const EdgeInsets.symmetric(vertical: 16),
        )
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Habit'),
      ),
      body: bodyWidget,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newHabit = await Navigator.push(
            context,
            MaterialPageRoute<Habit>(
              builder: (context) => const HabitCreateScreen(),
            ),
          );

          if (newHabit != null) {
            _createHabit(newHabit);
          }
        },
        tooltip: 'Add Habit',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _loadHabits() async {
    try {
      _safeSetState(() {
        _pageStatus = _HomePageStatus.loading;
      });
      final habits = await Future.delayed(
        Duration(seconds: 1),
        () => [
          Habit(
            title: 'Sleep 8 hrs',
            completedDates: {
              DateUtils.dateOnly(DateTime.now().subtract(Duration(days: 1))),
            },
          ),
          Habit(
            title: 'Read Books',
            completedDates: {
              DateUtils.dateOnly(DateTime.now().subtract(Duration(days: 2))),
              DateUtils.dateOnly(DateTime.now().subtract(Duration(days: 3))),
            },
          ),
        ],
      );
      _safeSetState(() {
        _pageStatus = _HomePageStatus.data;
        _habits = habits;
      });
    } catch (_) {
      _safeSetState(() {
        _pageStatus = _HomePageStatus.error;
      });
    }
  }

  Future<void> _createHabit(Habit habit) async {
    _safeSetState(() {
      _habits.add(habit);
    });

    // Save to DB or network
  }

  void _safeSetState(VoidCallback callback) {
    if (!mounted) {
      return;
    }
    setState(callback);
  }
}

enum _HomePageStatus { loading, data, error }
