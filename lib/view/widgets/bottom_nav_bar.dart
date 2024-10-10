import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:gym_app_sample/view/screens/activity_screen/activity_screen.dart';
import 'package:gym_app_sample/view/screens/explore_screen/explore_screen.dart';
import 'package:gym_app_sample/view/screens/home_screen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          HomeScreen(), // First tab -> HomeScreen
          ExploreScreen(), // Second tab -> ExploreScreen
          ActivityScreen(), // Third tab -> ActivityScreen
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        //borderRadius: BorderRadius.circular(35),
        child: BottomNavyBar(
          backgroundColor: Colors.black,
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
            pageController.jumpToPage(index); // Switches to the respective page
          },
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              title: Text('Home', selectionColor: Colors.black),
              activeColor: Color.fromARGB(255, 167, 250, 42),
              inactiveColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.rocket),
              title: Text('Explore'),
              activeColor: Color.fromARGB(255, 167, 250, 42),
              inactiveColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.analytics_outlined),
              title: Text('Analytics'),
              activeColor: Color.fromARGB(255, 167, 250, 42),
              inactiveColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
