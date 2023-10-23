import 'package:flutter/material.dart';
import 'package:pomodoro_master_app/Core/utils/my_colors.dart';
import 'package:pomodoro_master_app/Core/utils/styles.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/background_container.dart';

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
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.check,
                    color: MyColors.myBabyBlue,
                    size: 30,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: MyColors.myWhite.withOpacity(0.5),
                  child: const Icon(
                    Icons.close,
                    color: MyColors.myBabyBlue,
                    size: 30,
                  ),
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
