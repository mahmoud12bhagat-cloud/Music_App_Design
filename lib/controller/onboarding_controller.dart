import 'package:flutter/material.dart';

class OnboardingController {
  static void moveToHomePage({required BuildContext context}) {
    Navigator.pushNamed(context, "MainHomeScreen");
  }
}
