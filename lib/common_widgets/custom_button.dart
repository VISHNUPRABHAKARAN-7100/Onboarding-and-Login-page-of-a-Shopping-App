import 'package:flutter/material.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/utils/constant_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonTitle,
    required this.buttonColor,
    required this.onPressed,
    required this.bottonWidth,
  });

  final String buttonTitle;
  final Color buttonColor;
  final void Function() onPressed;
  final double bottonWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        return onPressed();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: ConstantColors.constantYellowColor,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(bottonWidth, 50)),
      child: Text(buttonTitle),
    );
  }
}
