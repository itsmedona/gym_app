import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart'; // Import the curved navigation bar package
import 'package:gym_app_sample/view/screens/explore_screen/explore_screen.dart';
import 'package:gym_app_sample/view/screens/home_screen/home_screen.dart';
import 'package:gym_app_sample/view/screens/activity_screen/activity_screen.dart';
import 'package:gym_app_sample/view/screens/workout_screen/workout_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // List of Screens for each tab
  final List<Widget> screens = [
    HomeScreen(), // Home tab
    ExploreScreen(), // Explore tab
    ActivityScreen(), // Activity tab
    WorkoutScreen(), // Workout tab
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: _selectedIndex,
        backgroundColor: Colors.transparent,
        color: Colors.green,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black, // Icon color
          ),
          Icon(
            Icons.explore,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.bar_chart,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.fitness_center,
            size: 30,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
