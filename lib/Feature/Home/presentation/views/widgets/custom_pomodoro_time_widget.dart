import 'package:flutter/material.dart';
import 'package:pomodoro_master_app/Core/utils/styles.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/background_container.dart';

class CustomPomodoroTimeWidget extends StatelessWidget {
  const CustomPomodoroTimeWidget({
    super.key,
    required this.time,
    required this.title,
  });

  final int time;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BackgroundContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(time.toString(), style: Styles.textStyle20),
            const SizedBox(height: 16),
            Text(title, style: Styles.textStyle16),
          ],
        ),
      ),
    );
  }
}
