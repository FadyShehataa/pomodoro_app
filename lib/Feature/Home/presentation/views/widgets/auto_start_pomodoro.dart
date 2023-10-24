import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_master_app/Core/utils/my_colors.dart';
import 'package:pomodoro_master_app/Core/utils/styles.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/background_container.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/custom_circle_avatar.dart';

import '../../manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';

class AutoStartPomodoroWidget extends StatelessWidget {
  const AutoStartPomodoroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePomodoroCubit, CreatePomodoroState>(
      builder: (context, state) {
        return BackgroundContainer(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCircleAvatar(
                      icon: Icons.check,
                      backgroundColor:
                          BlocProvider.of<CreatePomodoroCubit>(context)
                                  .autoStartPomodoro
                              ? MyColors.myWhite
                              : MyColors.myWhite.withOpacity(0.5),
                      onPressed: () {
                        BlocProvider.of<CreatePomodoroCubit>(context)
                            .autoStartPomodoro = true;
                        BlocProvider.of<CreatePomodoroCubit>(context)
                            .changeTime();
                      },
                    ),
                    CustomCircleAvatar(
                      icon: Icons.close,
                      backgroundColor:
                          BlocProvider.of<CreatePomodoroCubit>(context)
                                  .autoStartPomodoro
                              ? MyColors.myWhite.withOpacity(0.5)
                              : MyColors.myWhite,
                      onPressed: () {
                        BlocProvider.of<CreatePomodoroCubit>(context)
                            .autoStartPomodoro = false;
                        BlocProvider.of<CreatePomodoroCubit>(context)
                            .changeTime();
                      },
                    ),
                  ],
                ),
              ),
              Text('Auto start Pomodoro', style: Styles.textStyle16),
            ],
          ),
        );
      },
    );
  }
}
