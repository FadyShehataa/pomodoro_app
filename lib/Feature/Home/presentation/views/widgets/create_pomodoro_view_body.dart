import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../Core/widgets/custom_text_form_field.dart';
import '../../manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import 'auto_start_widget.dart';
import 'create_pomodoro_colors.dart';
import 'create_pomodoro_footer.dart';
import 'custom_pomodoro_time_widget.dart';

class CreatePomodoroViewBody extends StatelessWidget {
  const CreatePomodoroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var createPomodoroCubit = BlocProvider.of<CreatePomodoroCubit>(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CustomTextFormField(hintText: 'Enter Pomodoro Name'),
            const SizedBox(height: 20),
            Text('DURATIONS', style: Styles.textStyle14),
            const SizedBox(height: 10),
            Row(
              children: [
                CustomPomodoroTimeWidget(
                  time: createPomodoroCubit.pomodoroTime,
                  title: 'Pomodoro',
                ),
                const SizedBox(width: 5),
                CustomPomodoroTimeWidget(
                  time: createPomodoroCubit.shortBreakTime,
                  title: 'Short Break',
                ),
                const SizedBox(width: 5),
                CustomPomodoroTimeWidget(
                  time: createPomodoroCubit.longBreakTime,
                  title: 'Long Break',
                ),
              ],
            ),
            const Row(
              children: [
                CustomPomodoroTimeWidget(
                    time: 4, title: 'Pomodoros until long break'),
              ],
            ),
            const AutoStartWidget(title: 'Auto start breaks'),
            const AutoStartWidget(title: 'Auto start Pomodoro'),
            const CreatePomodoroColors(),
            const CreatePomodoroFooter(),
          ],
        ),
      ),
    );
  }
}
