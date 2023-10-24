import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/background_container.dart';

import '../../../../../Core/utils/constants.dart';
import 'color_item.dart';

class CreatePomodoroColors extends StatefulWidget {
  const CreatePomodoroColors({
    super.key,
  });

  @override
  State<CreatePomodoroColors> createState() => _CreatePomodoroColorsState();
}

class _CreatePomodoroColorsState extends State<CreatePomodoroColors> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColors
        .indexOf(BlocProvider.of<CreatePomodoroCubit>(context).colorPomodoro);
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: SizedBox(
        height: 50,
        child: ListView.separated(
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              BlocProvider.of<CreatePomodoroCubit>(context).colorPomodoro = kColors[index];
            BlocProvider.of<CreatePomodoroCubit>(context).changeColor();
            setState(() => currentIndex = index);
            },
            child: ColorItem(
              color: kColors[index],
              isSelected: currentIndex == index,
            ),
          ),
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
        ),
      ),
    );
  }
}
