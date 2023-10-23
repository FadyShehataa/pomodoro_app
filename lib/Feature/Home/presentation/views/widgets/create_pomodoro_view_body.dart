import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../Core/widgets/custom_text_form_field.dart';
import 'auto_start_widget.dart';
import 'create_pomodoro_colors.dart';
import 'create_pomodoro_footer.dart';
import 'custom_pomodoro_time_widget.dart';

class CreatePomodoroViewBody extends StatelessWidget {
  const CreatePomodoroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CustomTextFormField(hintText: 'Enter Pomodoro Name'),
            const SizedBox(height: 20),
            Text('DURATIONS', style: Styles.textStyle14),
            const SizedBox(height: 10),
            const Row(
              children: [
                CustomPomodoroTimeWidget(time: 25, title: 'Pomodoro'),
                SizedBox(width: 5),
                CustomPomodoroTimeWidget(time: 5, title: 'Short Break'),
                SizedBox(width: 5),
                CustomPomodoroTimeWidget(time: 15, title: 'Long Break'),
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
