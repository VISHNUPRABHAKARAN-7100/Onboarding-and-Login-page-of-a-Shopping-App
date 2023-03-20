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
  SignInScreen({super.key});

  // Form key for sign in form
  final GlobalKey<FormState> _signInFormKey = GlobalKey<FormState>();

  // Textediting controllers for sign in form.
  final _emailEditingController = TextEditingController();
  final _passwordEditingController = TextEditingController();
  final _confirmPasswordEditingController = TextEditingController();

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
              child: Form(
                key: _signInFormKey,
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
                    CustomTextFormField(
                      hintText: 'Enter your email',
                      prifixIconPath:
                          'assets/icons/icon_of_email_within_a_circle.png',
                      validator: () {
                        if (_emailEditingController.text.isEmpty) {
                          return 'Email is required';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Textfomrfield for enter the password of the user to login.
                    CustomTextFormField(
                      hintText: 'Password',
                      prifixIconPath:
                          'assets/icons/icon_of_lock_within_a_circle.png',
                      obscureText: true,
                      validator: () {
                        if (_passwordEditingController.text.isEmpty) {
                          return 'Password is required';
                        } else if (_passwordEditingController.text.length <=
                            6) {
                          return 'Password should be atlest 6 letters';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      hintText: 'Confirm Password',
                      prifixIconPath:
                          'assets/icons/icon_of_lock_within_a_circle.png',
                      obscureText: true,
                      validator: () {
                        if (_confirmPasswordEditingController.text.isEmpty) {
                          return 'Password is required';
                        } else if (_confirmPasswordEditingController
                                .text.length <=
                            6) {
                          return 'Password should be atlest 6 letters';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Button for signin.
                    CustomButton(
                      buttonTitle: 'SIGNIN',
                      buttonColor: ConstantColors.constantYellowColor,
                      onPressed: () {
                        if (_signInFormKey.currentState!.validate()) {
                          print('object');
                        }
                      },
                      bottonWidth: double.infinity,
                    )
                  ],
                ),
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
