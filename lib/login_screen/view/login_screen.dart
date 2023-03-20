import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/common_widgets/custom_button.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/common_widgets/custom_textformfield.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/utils/constant_colors.dart';

import '../../sign_in_screen/view/sign_in_screen.dart';

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
              height: size.height - 50,
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

                  CustomTextFormField(
                    hintText: 'Enter your email',
                    prifixIconPath:
                        'assets/icons/icon_of_email_within_a_circle.png',
                    validator: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Textfomrfield for enter the password of the user to login.
                  CustomTextFormField(
                    hintText: '* * * * * * *',
                    prifixIconPath:
                        'assets/icons/icon_of_lock_within_a_circle.png',
                    obscureText: true,
                    validator: () {},
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
        height: 50,
        child: Center(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.grey),
              children: [
                const TextSpan(text: 'New User /'),
                const WidgetSpan(
                  child: SizedBox(
                    width: 5,
                  ),
                ),
                TextSpan(
                  text: 'SignUp',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ConstantColors.constantYellowColor,
                    fontSize: 18,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
