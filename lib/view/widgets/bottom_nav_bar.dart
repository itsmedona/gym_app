import 'package:flutter/material.dart';
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
  final List<Widget> _screens = [
    HomeScreen(), // Home tab
    ExploreScreen(), // Explore tab
    ActivityScreen(), // Activity tab
    WorkoutScreen(), // Workout tab
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set the selected index
        onTap: _onItemTapped, // Change the selected index on tap
        type: BottomNavigationBarType.fixed, // Ensure icons don’t shift on tap
        selectedItemColor: Colors.green, // Active tab color
        unselectedItemColor: Colors.grey, // Inactive tab color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workout',
          ),
        ],
      ),
    );
  }
}
