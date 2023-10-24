import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_master_app/Feature/Home/data/models/pomodoro_model.dart';

import '../../../../../Core/utils/constants.dart';
import '../../../../../Core/utils/my_colors.dart';
import '../../../../../Core/utils/styles.dart';
import '../../manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';

class CreatePomodoroFooter extends StatelessWidget {
  const CreatePomodoroFooter({
    super.key,
    required this.formKey,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              backgroundColor: MyColors.myWhite,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // PomodoroModel pomodoroModel = PomodoroModel(
                //   title: controller.text,
                //   pomodoroTime: BlocProvider.of<CreatePomodoroCubit>(context)
                //       .pomodoroTime,
                //   shortBreakTime: BlocProvider.of<CreatePomodoroCubit>(context)
                //       .shortBreakTime,
                //   longBreakTime: BlocProvider.of<CreatePomodoroCubit>(context)
                //       .longBreakTime,
                //   // pomodorosUntilLongBreak: BlocProvider.of<CreatePomodoroCubit>(context).pomodorosUntilLongBreak,
                //   autoStartBreaks: true,
                //   autoStartPomodoro: true,
                //   color: MyColors.myBabyBlue.value,
                // );

                // BlocProvider.of<CreatePomodoroCubit>(context).addPomodoro(pomodoroModel);

                // print pomodoro model info
                print('Pomodoro name: ${controller.text}');
                print(
                    'Pomodoro time: ${BlocProvider.of<CreatePomodoroCubit>(context).pomodoroTime}');
                print(
                    'Short break time: ${BlocProvider.of<CreatePomodoroCubit>(context).shortBreakTime}');
                print(
                    'Long break time: ${BlocProvider.of<CreatePomodoroCubit>(context).longBreakTime}');
                print(
                    'pomodoros until Long break time: ${BlocProvider.of<CreatePomodoroCubit>(context).pomodorosUntilLongBreak}');
                // print('Auto start breaks: ${BlocProvider.of<CreatePomodoroCubit>(context).autoStartBreaks}');
                // print('Auto start pomodoro: ${BlocProvider.of<CreatePomodoroCubit>(context).autoStartPomodoro}');
                // print('Pomodoro color: ${BlocProvider.of<CreatePomodoroCubit>(context).pomodoroColor}');
              }
            },
            child: Text(
              'Create Pomodoro',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
                color: MyColors.myBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
