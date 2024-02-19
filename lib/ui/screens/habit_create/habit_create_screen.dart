import 'package:flutter/material.dart';

import '../../../domain/habit_state_holder.dart';

class HabitCreateScreen extends StatefulWidget {
  const HabitCreateScreen({super.key});

  @override
  State<HabitCreateScreen> createState() => _HabitCreateScreenState();
}

class _HabitCreateScreenState extends State<HabitCreateScreen> {
  late final TextEditingController _titleController;

  bool _isCreating = false;

  @override
  void initState() {
    super.initState();
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
                  await HabitsStateHolder.instance.addHabit(
                    title: _titleController.text,
                  );
                  if (mounted) {
                    Navigator.pop(context);
                  }
                } catch (e) {
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
