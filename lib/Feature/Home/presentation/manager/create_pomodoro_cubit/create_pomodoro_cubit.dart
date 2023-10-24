import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_pomodoro_state.dart';

class CreatePomodoroCubit extends Cubit<CreatePomodoroState> {
  CreatePomodoroCubit() : super(CreatePomodoroInitial());

  int pomodoroTime = 25;
  int shortBreakTime = 5;
  int longBreakTime = 15;
}
