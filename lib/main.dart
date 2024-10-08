import 'package:flutter/material.dart';
import 'package:gym_app_sample/view/screens/on_boarding_screen/on_boarding_screen.dart';

void main() {
  runApp(GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: OnboardingScreen());
  }
}
