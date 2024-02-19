import 'package:flutter/material.dart';

import '../../../data/models/habit.dart';
import '../../widgets/weekly_calendar.dart';

class HabitShowScreen extends StatefulWidget {
  final Habit habit;

  const HabitShowScreen({
    required this.habit,
    super.key,
  });

  @override
  State<HabitShowScreen> createState() => _HabitShowScreenState();
}

class _HabitShowScreenState extends State<HabitShowScreen> {
  late Habit _habit;

  @override
  void initState() {
    super.initState();
    _habit = widget.habit;
  }

  @override
  void didUpdateWidget(covariant HabitShowScreen oldWidget) {
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
