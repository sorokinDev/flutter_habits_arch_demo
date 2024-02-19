import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habits_arch_demo/ui/screens/habit_create/habit_create_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits_arch_demo/ui/screens/habit_create/habit_create_state.dart';

class HabitCreateScreen extends StatelessWidget {
  const HabitCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return BlocProvider.value(
          value: ref.watch(habitCreateCubitProvider),
          child: const _HabitCreateView(),
        );
      }
    );
  }
}

class _HabitCreateView extends StatefulWidget {
  const _HabitCreateView({
    super.key,
  });

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
    return BlocListener<HabitCreateCubit, HabitCreateState>(
      listenWhen: (context, state) => switch (state) {
        HabitCreateSuccess() => true,
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
        body: BlocListener<HabitCreateCubit, HabitCreateState>(
          listener: (context, state) {
            switch (state) {
              case HabitCreateError():
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Error'),
                  ),
                );
            }
          },
          child: Padding(
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
                BlocSelector<HabitCreateCubit, HabitCreateState, bool>(
                  selector: (state) => switch (state) {
                    HabitCreateProgress() => true,
                    _ => false,
                  },
                  builder: (context, isProgress) {
                    return ElevatedButton(
                      child: !isProgress
                          ? const Text('Create')
                          : const CircularProgressIndicator(),
                      onPressed: () async {
                        context.cubit.submit(
                          title: _titleController.text,
                        );
                      },
                    );
                  },
                )
              ],
            ),
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

extension _ContextX on BuildContext {
  HabitCreateCubit get cubit => read<HabitCreateCubit>();
}
