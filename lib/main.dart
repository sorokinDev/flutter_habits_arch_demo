import 'package:flutter/material.dart';
import 'package:habits_arch_demo/core/app.dart';
import 'package:habits_arch_demo/core/di/di.dart';

void main() {
  configureDependencies();
  runApp(const HabitsApp());
}
