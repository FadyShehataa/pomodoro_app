import 'package:flutter/material.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/background_container.dart';

import '../../../../../Core/utils/constants.dart';
import 'color_item.dart';

class CreatePomodoroColors extends StatelessWidget {
  const CreatePomodoroColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: SizedBox(
        height: 50,
        child: ListView.separated(
          itemBuilder: (context, index) => ColorItem(
            color: kColors[index],
            isSelected: false,
          ),
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
        ),
      ),
    );
  }
}
