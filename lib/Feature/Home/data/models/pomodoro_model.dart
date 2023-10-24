class PomodoroModel {
  final String title;
  final int pomodoroTime;
  final int shortBreakTime;
  final int longBreakTime;
  final bool autoStartBreaks;
  final bool autoStartPomodoro;
  final int color;

  PomodoroModel({
    required this.title,
    required this.pomodoroTime,
    required this.shortBreakTime,
    required this.longBreakTime,
    required this.autoStartBreaks,
    required this.autoStartPomodoro,
    required this.color,
  });
}
