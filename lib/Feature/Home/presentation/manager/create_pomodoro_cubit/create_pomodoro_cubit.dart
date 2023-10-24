import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_pomodoro_state.dart';

class CreatePomodoroCubit extends Cubit<CreatePomodoroState> {
  CreatePomodoroCubit() : super(CreatePomodoroInitial());

  int pomodoroTime = 25;
  int shortBreakTime = 5;
  int longBreakTime = 15;
  int pomodorosUntilLongBreak = 4;

  int time = 0;

  void changeTime() {
    emit(CreatePomodoroChangLoading());
    emit(CreatePomodoroChangSuccess());
  }
}
