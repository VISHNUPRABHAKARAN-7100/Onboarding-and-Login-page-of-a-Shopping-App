import 'package:flutter/material.dart';
import 'package:onboarding_and_login_page_of_a_shopping_app/utils/constant_colors.dart';
import 'onboarding_screen/view/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initializing Firebase for authentication.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ConstantColors.constantWhiteColor,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
