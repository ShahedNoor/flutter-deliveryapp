import 'package:flutter/material.dart';

import 'onboarding_page.dart';
import '../utils/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static final myColors = AppColors();

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SplashPage.myColors.primaryBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.png',
              height: 100,
              width: 140,
            ),
          ],
        ),
      ),
    );
  }
}
