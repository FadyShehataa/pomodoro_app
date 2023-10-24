import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';

import '../../../Feature/Home/presentation/views/widgets/custom_circle_avatar.dart';
import '../enums/pomodoro_duration_type.dart';
import '../styles.dart';
import 'get_pomodoro_info.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required PomodoroDurationType pomodoroDurationType,
}) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      Map<String, dynamic> pomodoroInfo = getPomodoroInfo(
        pomodoroDurationType: pomodoroDurationType,
        context: context,
      );
      BlocProvider.of<CreatePomodoroCubit>(context).time = pomodoroInfo['time'];
      return AlertDialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pomodoroInfo['title'],
              style: Styles.textStyle16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCircleAvatar(
                  icon: Icons.remove,
                  onPressed: () {
                    if (BlocProvider.of<CreatePomodoroCubit>(context).time !=
                        1) {
                      BlocProvider.of<CreatePomodoroCubit>(context).time--;
                      BlocProvider.of<CreatePomodoroCubit>(context)
                          .changeTime();
                    }
                  },
                ),
                BlocBuilder<CreatePomodoroCubit, CreatePomodoroState>(
                  builder: (context, state) {
                    return Text(
                      BlocProvider.of<CreatePomodoroCubit>(context)
                          .time
                          .toString(),
                      style: Styles.textStyle20,
                    );
                  },
                ),
                CustomCircleAvatar(
                  icon: Icons.add,
                  onPressed: () {
                    BlocProvider.of<CreatePomodoroCubit>(context).time++;
                    BlocProvider.of<CreatePomodoroCubit>(context).changeTime();
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomCircleAvatar(
              icon: Icons.check,
              onPressed: () {
                pomodoroInfo['onPressed']();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
