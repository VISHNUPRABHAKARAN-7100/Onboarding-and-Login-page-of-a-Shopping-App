import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/common_widgets/custom_button.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/utils/constant_colors.dart';
import '../../login_screen/view/login_screen.dart';

/// This screen is for showing the onboarding
/// screens. There are 3 onboard screens.
/// This screen contains these 3 screens
/// within this file.

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Variable to find the size of the device.
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            // This screen is first onbording screen.
            // This screen contains a picture of a girl
            // with a shopping bag.
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                // Image of a girl with a shopping bag.
                Image.asset(
                  'assets/images/girl_with_shopping_bag.png',
                  height: size.height * 0.5,
                  width: size.width,
                ),
                Text(
                  'Non stop shopping.',
                  style: GoogleFonts.yellowtail(
                      fontSize: 40,
                      color: ConstantColors.constantYellowColor,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Do your shopping unlimited \n i\'m here to assist you',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ConstantColors.constantYellowColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 18,
                      width: 18,
                      child: Center(
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: ConstantColors.constantYellowColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: ConstantColors.constantYellowColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: ConstantColors.constantYellowColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
            // This is the second onboarding screen.
            // This screen contains an image of female
            // dress.
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                // Image of a girl with a shopping bag.
                Image.asset(
                  'assets/images/female_dress.png',
                  height: size.height * 0.5,
                  width: size.width,
                ),
                Text(
                  'Your Daily Dress.',
                  style: GoogleFonts.yellowtail(
                      fontSize: 40,
                      color: ConstantColors.constantYellowColor,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'I\'ll make your wearing descision easier.\nalso we notify in your daily dressup.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: ConstantColors.constantYellowColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ConstantColors.constantYellowColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 18,
                      width: 18,
                      child: Center(
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: ConstantColors.constantYellowColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: ConstantColors.constantYellowColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            // This is the third onboarding screen.
            // This screen contains an image of
            // dresses in a hanger.
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                // Image of a girl with a shopping bag.
                Image.asset(
                  'assets/images/dresses_in_an_hanger.png',
                  height: size.height * 0.5,
                  width: size.width,
                ),
                Text(
                  'Your Wardrobe',
                  style: GoogleFonts.yellowtail(
                      fontSize: 40,
                      color: ConstantColors.constantYellowColor,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'add all your clothes and accessoried\nin your wardrobe',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: CustomButton(
                    buttonColor: ConstantColors.constantYellowColor,
                    buttonTitle: 'LOGIN',
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    bottonWidth: double.infinity,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
