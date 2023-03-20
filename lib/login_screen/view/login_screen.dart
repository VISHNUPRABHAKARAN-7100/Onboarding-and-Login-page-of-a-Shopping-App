import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/common_widgets/custom_button.dart';
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
              height: size.height - 30,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Text widget to greeting to the user.
                  Text(
                    'Hello there!',
                    style: GoogleFonts.roboto(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Text widget to greeting to the user
                  Text(
                    'Welcome back',
                    style: GoogleFonts.alegreya(
                      fontSize: 25,
                    ),
                  ),
                  // Text widget to greeting to the user
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
                  // Textfomrfield for enter the username of the user to login.
                  const CustomTextFormField(
                    hintText: 'Enter your name',
                    prifixIconPath:
                        'assets/icons/icon_of_person_within_a_circle.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Textfomrfield for enter the password of the user to login.
                  const CustomTextFormField(
                    hintText: '* * * * * * *',
                    prifixIconPath:
                        'assets/icons/icon_of_lock_within_a_circle.png',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Button for Login after entering the credentials.
                  CustomButton(
                    buttonTitle: 'LOGIN',
                    buttonColor: ConstantColors.constantYellowColor,
                    onPressed: () {},
                    bottonWidth: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // Text widget to navigate to SignUp screen,
      // if the user have no account in our company.
      bottomNavigationBar: SizedBox(
        height: 30,
        child: Center(
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.grey),
              children: [
                TextSpan(text: 'New User /'),
                WidgetSpan(
                  child: SizedBox(
                    width: 5,
                  ),
                ),
                TextSpan(
                  text: 'SignUp',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ConstantColors.constantYellowColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
