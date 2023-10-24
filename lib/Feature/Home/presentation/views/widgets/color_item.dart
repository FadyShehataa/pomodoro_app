import 'package:flutter/material.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/widgets/custom_circle_avatar.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.color, required this.isSelected});
  final Color? color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: CustomCircleAvatar(
                icon: Icons.check,
                onPressed: null,
              ),
            ),
          )
        : Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
          );
  }
}
