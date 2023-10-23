import 'package:flutter/material.dart';
import 'package:pomodoro_master_app/Core/utils/icon_broken.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/create_pomodoro_view_body.dart';

import '../../../../Core/utils/my_colors.dart';

class CreatePomodoroView extends StatelessWidget {
  const CreatePomodoroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBabyBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(IconBroken.Arrow___Left_2),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const CreatePomodoroViewBody(),
    );
  }
}
