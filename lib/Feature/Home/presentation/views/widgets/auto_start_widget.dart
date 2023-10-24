import 'package:flutter/material.dart';
import 'package:pomodoro_master_app/Core/utils/my_colors.dart';
import 'package:pomodoro_master_app/Core/utils/styles.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/background_container.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/custom_circle_avatar.dart';

class AutoStartWidget extends StatelessWidget {
  const AutoStartWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomCircleAvatar(icon: Icons.check),
                CustomCircleAvatar(
                  icon: Icons.close,
                  backgroundColor: MyColors.myWhite.withOpacity(0.5),
                ),
              ],
            ),
          ),
          Text(title, style: Styles.textStyle16),
        ],
      ),
    );
  }
}
