import 'package:flutter/material.dart';

import 'habit.dart';
import 'weekly_calendar.dart';

class HabitScreen extends StatefulWidget {
  final Habit habit;

  const HabitScreen({
    required this.habit,
    super.key,
  });

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  late Habit _habit;

  @override
  void initState() {
    super.initState();
    _habit = widget.habit;
  }

  @override
  void didUpdateWidget(covariant HabitScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _habit = widget.habit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_habit.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Habit progress: ${_habit.completedDates.length}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          WeeklyCalendar(
            selectedDates: _habit.completedDates,
            onTapDate: (date) {
              setState(() {
                if (_habit.completedDates.contains(date)) {
                  _habit.completedDates.remove(date);
                } else {
                  _habit.completedDates.add(date);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
