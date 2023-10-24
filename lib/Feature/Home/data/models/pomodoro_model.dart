import 'package:hive/hive.dart';

part 'pomodoro_model.g.dart';

@HiveType(typeId: 0)
class PomodoroModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final int pomodoroTime;
  @HiveField(2)
  final int shortBreakTime;
  @HiveField(3)
  final int longBreakTime;
  @HiveField(4)
  final int pomodorosUntilLongBreak;
  @HiveField(5)
  final bool autoStartBreaks;
  @HiveField(6)
  final bool autoStartPomodoro;
  @HiveField(7)
  final int color;

  PomodoroModel({
    required this.title,
    required this.pomodoroTime,
    required this.shortBreakTime,
    required this.longBreakTime,
    required this.pomodorosUntilLongBreak,
    required this.autoStartBreaks,
    required this.autoStartPomodoro,
    required this.color,
  });
}
