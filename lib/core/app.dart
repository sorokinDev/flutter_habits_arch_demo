import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ui/screens/home/home_screen.dart';
import 'di/di.dart';

class HabitsApp extends StatelessWidget {
  const HabitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: diContainer.habitsStateHolder,
        ),
      ],
      child: MaterialApp(
        title: 'Habits App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
