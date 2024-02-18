import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/repositories.dart';
import 'habit_create_bloc.dart';

class HabitCreateScreen extends StatelessWidget {
  const HabitCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HabitCreationBloc(
        context.read<HabitsRepository>(),
      ),
      child: const _HabitCreateView(),
    );
  }
}

class _HabitCreateView extends StatefulWidget {
  const _HabitCreateView({super.key});

  @override
  State<_HabitCreateView> createState() => _HabitCreateViewState();
}

class _HabitCreateViewState extends State<_HabitCreateView> {
  late final TextEditingController _titleController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HabitCreationBloc, HabitCreationState>(
      listenWhen: (prevState, nextState) => switch (nextState) {
        HabitCreationSuccess() => true,
        _ => false,
      },
      listener: (context, state) {
        Navigator.pop(context);
      },
      child: Scaffold(
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
              BlocBuilder<HabitCreationBloc, HabitCreationState>(
                builder: (context, state) {
                  final isProgress = switch (state) {
                    HabitCreationProgress() => true,
                    _ => false,
                  };
                  return ElevatedButton(
                    child: !isProgress
                        ? const Text('Create')
                        : const CircularProgressIndicator(),
                    onPressed: () async {
                      context
                          .read<HabitCreationBloc>()
                          .add(HabitCreationEvent.submitPressed(
                            title: _titleController.text,
                          ));
                    },
                  );
                },
              ),
            ],
          ),
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
