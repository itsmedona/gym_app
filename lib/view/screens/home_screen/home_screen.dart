import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              'Good Morning \nPramuditya Uzumaki',
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
            TodayPlanWidget(), // Custom widget for today's plan
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
      width: 150,
      margin: EdgeInsets.only(right: 10),
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
                'assets/images/workout.png',
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
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
        SizedBox(height: 10),
        PlanItem(
          image: 'assets/images/pushup.png',
          title: 'Push Up',
          description: '100 Push Ups a day',
          level: 'Intermediate',
        ),
        PlanItem(
          image: 'assets/images/situp.png',
          title: 'Sit Up',
          description: '20 Sit Ups a day',
          level: 'Beginner',
        ),
        SizedBox(height: 10),
        PlanItem(
          image: 'assets/images/knee_pushup.png',
          title: 'Knee Push Up',
          description: '15 Knee Push Ups a day',
          level: 'Beginner',
        ),
      ],
    );
  }
}

class PlanItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String level;

  PlanItem({
    required this.image,
    required this.title,
    required this.description,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: ListTile(
        leading: Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
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
        trailing: Icon(
          Icons.check_circle,
          color: Colors.green, // Icon to show completion status
        ),
      ),
    );
  }
}
