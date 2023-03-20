import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/common_widgets/custom_textformfield.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/utils/constant_colors.dart';

/// This screen is for showing the
/// login screen, this screen contains
/// greetings to the user and
/// two text form field to enter
/// the credentials of the user.

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Variable to find the size of the device.
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Hello there!',
                    style: GoogleFonts.roboto(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome back',
                    style: GoogleFonts.alegreya(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Sign in to continue to wardrobe',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const CustomTextFormField(
                    hintText: 'Enter your name',
                    prifixIconPath: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
