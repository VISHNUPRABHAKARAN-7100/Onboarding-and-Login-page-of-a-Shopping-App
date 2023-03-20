import 'package:flutter/material.dart';
import '../utils/constant_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prifixIconPath,
    this.obscureText = false,
    required this.validator,
  });

  final String hintText;
  final String prifixIconPath;
  final bool obscureText;
  final Function() validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: ConstantColors.constantBlackColor,
        ),
        fillColor: Colors.grey.shade200,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ConstantColors.constantYellowColor,
          ),
        ),
        filled: true,
        prefixIcon: Image.asset(
          prifixIconPath,
        ),
      ),
      textInputAction: TextInputAction.next,
      textAlign: TextAlign.center,
      cursorColor: ConstantColors.constantBlackColor,
      validator: (value) {
        return validator();
      },
    );
  }
}
