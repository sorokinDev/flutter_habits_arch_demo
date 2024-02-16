import 'package:habits_arch_demo/data/dao/habit_mock_dao.dart';
import 'package:habits_arch_demo/domain/habits_state/habits_state_holder.dart';

abstract class Locator {
  static final habitsStateHolder = HabitsStateHolder();
}