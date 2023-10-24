import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Feature/Home/presentation/manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import '../enums/pomodoro_duration_type.dart';

Map<String, dynamic> getPomodoroInfo({
  required PomodoroDurationType pomodoroDurationType,
  required BuildContext context,
}) {
  Map<String, dynamic> pomodoroInfo = {};

  switch (pomodoroDurationType) {
    case PomodoroDurationType.pomodoroTime:
      pomodoroInfo['title'] = 'Pomodoro Time';
      pomodoroInfo['onPressed'] = () {
        BlocProvider.of<CreatePomodoroCubit>(context).pomodoroTime =
            BlocProvider.of<CreatePomodoroCubit>(context).tempTime;
        BlocProvider.of<CreatePomodoroCubit>(context).changeTime();
      };
      pomodoroInfo['time'] =
          BlocProvider.of<CreatePomodoroCubit>(context).pomodoroTime;
      break;
    case PomodoroDurationType.shortBreakTime:
      pomodoroInfo['title'] = 'Short Break Time';
      pomodoroInfo['onPressed'] = () {
        BlocProvider.of<CreatePomodoroCubit>(context).shortBreakTime =
            BlocProvider.of<CreatePomodoroCubit>(context).tempTime;
        BlocProvider.of<CreatePomodoroCubit>(context).changeTime();
      };
      pomodoroInfo['time'] =
          BlocProvider.of<CreatePomodoroCubit>(context).shortBreakTime;
      break;
    case PomodoroDurationType.longBreakTime:
      pomodoroInfo['title'] = 'Long Break Time';
      pomodoroInfo['onPressed'] = () {
        BlocProvider.of<CreatePomodoroCubit>(context).longBreakTime =
            BlocProvider.of<CreatePomodoroCubit>(context).tempTime;
        BlocProvider.of<CreatePomodoroCubit>(context).changeTime();
      };
      pomodoroInfo['time'] =
          BlocProvider.of<CreatePomodoroCubit>(context).longBreakTime;
      break;
    case PomodoroDurationType.pomodorosUntilLongBreak:
      pomodoroInfo['title'] = 'Pomodoros Until Long Break';
      pomodoroInfo['onPressed'] = () {
        BlocProvider.of<CreatePomodoroCubit>(context).pomodorosUntilLongBreak =
            BlocProvider.of<CreatePomodoroCubit>(context).tempTime;
        BlocProvider.of<CreatePomodoroCubit>(context).changeTime();
      };
      pomodoroInfo['time'] =
          BlocProvider.of<CreatePomodoroCubit>(context).pomodorosUntilLongBreak;
      break;
  }

  return pomodoroInfo;
}
