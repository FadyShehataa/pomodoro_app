import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_master_app/Core/utils/icon_broken.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/create_pomodoro_view_body.dart';


class CreatePomodoroView extends StatelessWidget {
  const CreatePomodoroView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePomodoroCubit, CreatePomodoroState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor:
              BlocProvider.of<CreatePomodoroCubit>(context).colorPomodoro,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(IconBroken.Arrow___Left_2),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: const SafeArea(
            child: CreatePomodoroViewBody(),
          ),
        );
      },
    );
  }
}
