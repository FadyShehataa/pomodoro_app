import 'package:flutter/material.dart';

import '../../../../../Core/utils/constants.dart';
import '../../../../../Core/utils/my_colors.dart';
import '../../../../../Core/utils/styles.dart';

class CreatePomodoroFooter extends StatelessWidget {
  const CreatePomodoroFooter({
    super.key,
  });

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
            onPressed: () {},
            child: Text(
              'Create Pomodoro',
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w500, color: MyColors.myBlack),
            ),
          ),
        ),
      ],
    );
  }
}
