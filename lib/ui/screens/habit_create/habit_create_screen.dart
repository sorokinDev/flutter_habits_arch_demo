import 'package:flutter/material.dart';
import 'package:habits_arch_demo/domain/habits_state/habits_state_holder.dart';
import 'package:provider/provider.dart';

import '../../../core/di/di.dart';
import '../../../data/models/habit.dart';

class HabitCreateScreen extends StatefulWidget {
  const HabitCreateScreen({super.key});

  @override
  State<HabitCreateScreen> createState() => _HabitCreateScreenState();
}

class _HabitCreateScreenState extends State<HabitCreateScreen> {
  late final HabitsStateHolder _habitsStateHolder;
  late final TextEditingController _titleController;

  bool _isCreating = false;

  @override
  void initState() {
    super.initState();
    _habitsStateHolder = context.read<HabitsStateHolder>();
    _titleController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('New Habit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                hintText: 'Habit name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: !_isCreating
                  ? const Text('Create')
                  : const CircularProgressIndicator(),
              onPressed: () async {
                try {
                  setState(() {
                    _isCreating = true;
                  });
                  await _habitsStateHolder.addHabit(
                    title: _titleController.text,
                  );
                  if (mounted) {
                    Navigator.pop(context);
                  }
                } catch (e) {
                  print('error while creating habit: $e');
                  if (mounted) {
                    setState(() {
                      _isCreating = false;
                    });
                  }
                }
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
}
