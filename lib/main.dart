import 'package:flutter/material.dart';
//import 'package:gym_app_sample/view/screens/app_navigation_screen/app_navigation_screen.dart';
//import 'package:gym_app_sample/view/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:gym_app_sample/view/widgets/bottom_nav_bar.dart';

void main() {
  runApp(GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
