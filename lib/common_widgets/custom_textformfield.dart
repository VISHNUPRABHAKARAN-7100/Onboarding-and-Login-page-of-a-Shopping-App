import 'package:flutter/material.dart';
import '../utils/constant_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prifixIconPath,
  });

  final String hintText;
  final String prifixIconPath;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: ConstantColors.constantBlackColor,
        ),
        fillColor: Colors.grey.shade200,
        border: InputBorder.none,
        filled: true,
      prefixIcon: CircleAvatar(radius: 10,)),
      
      textAlign: TextAlign.center,
      cursorColor: ConstantColors.constantBlackColor,
    );
  }
}
