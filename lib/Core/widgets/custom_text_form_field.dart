import 'package:flutter/material.dart';

import '../../../../../Core/utils/my_colors.dart';
import '../../../../../Core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.validator,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Pomodoro Name',
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.myWhite,
            width: 2,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.myRed,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.myRed,
            width: 2,
          ),
        ),
        hintStyle: Styles.textStyle16.copyWith(color: MyColors.myWhite),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.myWhite,
            width: 1,
          ),
        ),
      ),
      style: Styles.textStyle14.copyWith(
        color: MyColors.myGrey,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: MyColors.myWhite,
      validator: validator,
    );
  }
}
