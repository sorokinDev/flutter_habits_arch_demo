import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habits_arch_demo/core/providers.dart';
import 'package:habits_arch_demo/domain/entities/entities.dart';
import 'package:habits_arch_demo/domain/repositories/habit_repository.dart';

class HabitCreateScreen extends StatelessWidget {
  const HabitCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) => _HabitCreateView(
        habitRepository: ref.watch(habitRepositoryProvider),
      ),
    );
  }
}

class _HabitCreateView extends StatefulWidget {
  final HabitsRepository habitRepository;

  const _HabitCreateView({
    required this.habitRepository,
    super.key,
  });

  @override
  State<_HabitCreateView> createState() => _HabitCreateViewState();
}

class _HabitCreateViewState extends State<_HabitCreateView> {
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
                  await widget.habitRepository.addHabit(
                    HabitCreationEntity(title: _titleController.text),
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
