import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/common_widgets/custom_button.dart';
import '../../common_widgets/custom_textformfield.dart';
import '../../utils/constant_colors.dart';

/// If the user have no account
/// then user can create a new account through
/// this screen with providing the creditials
/// of the user.

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
              width: double.infinity,
              height: size.height - 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text widget to greeting to the user.
                  Text(
                    'Create Account',
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
                    'to get started now!',
                    style: GoogleFonts.alegreya(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // Textfomrfield for enter the username of the user to login.
                  const CustomTextFormField(
                    hintText: 'Enter your email',
                    prifixIconPath:
                        'assets/icons/icon_of_person_within_a_circle.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Textfomrfield for enter the password of the user to login.
                  const CustomTextFormField(
                    hintText: 'Password',
                    prifixIconPath:
                        'assets/icons/icon_of_lock_within_a_circle.png',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    hintText: 'Confirm Password',
                    prifixIconPath:
                        'assets/icons/icon_of_email_within_a_circle.png',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Button for signin.
                  CustomButton(
                    buttonTitle: 'SIGNIN',
                    buttonColor: ConstantColors.constantYellowColor,
                    onPressed: () {},
                    bottonWidth: double.infinity,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      // Text widget to navigate to Login screen,
      // if the user have already an account in our company.
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Center(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.grey),
              children: [
                const TextSpan(text: 'Already have an account? /'),
                const WidgetSpan(
                  child: SizedBox(
                    width: 5,
                  ),
                ),
                TextSpan(
                  text: 'Login now',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ConstantColors.constantYellowColor,
                    fontSize: 18,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pop();
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
