import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              'Good Morning 👋\nPramuditya Uzumaki',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Popular Workouts', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            // Horizontal list of workout cards
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return WorkoutCard(); // Custom widget for workout card
                },
              ),
            ),
            SizedBox(height: 20),
            // Today's Plan
            Text('Today Plan', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            TodayPlanWidget(), // Another custom widget for today's plan
          ],
        ),
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Adjust the width of each workout card
      margin: EdgeInsets.only(right: 10), // Space between cards
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                'assets/workout_image.jpg', // Replace with actual image path
                height: 80,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lower Body Training',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('Duration: 30 min'),
                  Text('300 kcal'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TodayPlanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlanItem(
          title: 'Push Up',
          description: '100 Push Ups a day',
          level: 'Intermediate',
        ),
        SizedBox(height: 10),
        PlanItem(
          title: 'Sit Up',
          description: '20 Sit Ups a day',
          level: 'Beginner',
        ),
        SizedBox(height: 10),
        PlanItem(
          title: 'Knee Push Up',
          description: '15 Knee Push Ups a day',
          level: 'Beginner',
        ),
      ],
    );
  }
}

class PlanItem extends StatelessWidget {
  final String title;
  final String description;
  final String level;

  PlanItem(
      {required this.title, required this.description, required this.level});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description),
            Text(
              level,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        trailing: Icon(Icons.check_circle,
            color: Colors.green), // An icon to show completion status
      ),
    );
  }
}
