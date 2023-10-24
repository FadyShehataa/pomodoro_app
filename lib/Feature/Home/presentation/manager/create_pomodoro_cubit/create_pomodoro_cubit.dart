import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pomodoro_master_app/Core/utils/constants.dart';
import 'package:pomodoro_master_app/Feature/Home/data/models/pomodoro_model.dart';

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

  addPomodoro(PomodoroModel pomodoroModel) async {
    emit(AddPomodoroLoading());
    try {
      Box<PomodoroModel> pomodorosBox = Hive.box<PomodoroModel>(kPomodoroBox);
      await pomodorosBox.add(pomodoroModel);
      emit(AddPomodoroSuccess());
    } on Exception catch (e) {
      emit(AddPomodoroFailure(message: e.toString()));
    }
  }
}
