import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/utils/enums/pomodoro_duration_type.dart';
import '../../../../../Core/utils/styles.dart';
import '../../manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import 'custom_pomodoro_time_widget.dart';

class PomodoroTimes extends StatelessWidget {
  const PomodoroTimes({super.key});

  @override
  Widget build(BuildContext context) {
    CreatePomodoroCubit createPomodoroCubit =
        BlocProvider.of<CreatePomodoroCubit>(context);
    return BlocBuilder<CreatePomodoroCubit, CreatePomodoroState>(
      builder: (context, state) {
        return Column(
          children: [
            Text('DURATIONS', style: Styles.textStyle14),
            const SizedBox(height: 10),
            Row(
              children: [
                CustomPomodoroTimeWidget(
                  time: createPomodoroCubit.pomodoroTime,
                  title: 'Pomodoro',
                  pomodoroDurationType: PomodoroDurationType.pomodoroTime,
                ),
                const SizedBox(width: 5),
                CustomPomodoroTimeWidget(
                  time: createPomodoroCubit.shortBreakTime,
                  title: 'Short Break',
                  pomodoroDurationType: PomodoroDurationType.shortBreakTime,
                ),
                const SizedBox(width: 5),
                CustomPomodoroTimeWidget(
                  time: createPomodoroCubit.longBreakTime,
                  title: 'Long Break',
                  pomodoroDurationType: PomodoroDurationType.longBreakTime,
                ),
              ],
            ),
            Row(
              children: [
                CustomPomodoroTimeWidget(
                  time: createPomodoroCubit.pomodorosUntilLongBreak,
                  title: 'Pomodoros until long break',
                  pomodoroDurationType:
                      PomodoroDurationType.pomodorosUntilLongBreak,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
