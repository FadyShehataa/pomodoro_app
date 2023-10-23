import 'package:flutter/material.dart';

import '../../../../../Core/utils/my_colors.dart';
import '../../../../../Core/utils/styles.dart';
import '../utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.validator,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: const BorderSide(
            color: MyColors.myWhite,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: const BorderSide(
            color: MyColors.myRed,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: const BorderSide(
            color: MyColors.myRed,
            width: 2,
          ),
        ),
        hintStyle: Styles.textStyle16.copyWith(color: MyColors.myWhite),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: const BorderSide(
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
