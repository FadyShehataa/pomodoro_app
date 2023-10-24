import 'package:flutter/material.dart';

import '../../../../../Core/utils/my_colors.dart';
import '../../../../../Core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.controller});

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField( // TODO: key
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
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.myWhite,
            width: 1,
          ),
        ),
        hintStyle: Styles.textStyle16.copyWith(color: MyColors.myGrey),
      ),
      style: Styles.textStyle16.copyWith(
        color: MyColors.myWhite,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: MyColors.myWhite,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter Pomodoro name';
        }
        return null;
      },
    );
  }
}
