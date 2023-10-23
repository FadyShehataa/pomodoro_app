import 'package:flutter/material.dart';

import '../../../../../Core/utils/my_colors.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: MyColors.myWhite.withOpacity(0.2),
      ),
      child: child,
    );
  }
}
