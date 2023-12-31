import 'package:flutter/material.dart';

import '../../../../../Core/utils/my_colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    this.backgroundColor = MyColors.myWhite,
    required this.icon,
    this.onPressed,
    this.radius = 25,
  });

  final Color backgroundColor;
  final IconData icon;
  final void Function()? onPressed;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: IconButton(
        icon: Icon(
          icon,
          color: MyColors.myBabyBlue,
          size: 30,
        ),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
