import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Best Quarantine Workout', style: TextStyle(fontSize: 22)),
            SizedBox(height: 15),
            WorkoutRecommendationCard(),
            SizedBox(height: 25),
            Text('Challenge', style: TextStyle(fontSize: 18)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChallengeButton(title: 'Plank Challenge'),
                ChallengeButton(title: 'Sprint Challenge'),
                ChallengeButton(title: 'Squat Challenge'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChallengeButton extends StatelessWidget {
  final String title;

  ChallengeButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChallengeDetailScreen(title: title)),
          );
        },
        child: Container(
          padding: EdgeInsets.all(16),
          margin:
              EdgeInsets.symmetric(horizontal: 8), // Adding margin for spacing
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Icon(Icons.fitness_center, size: 40),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkoutRecommendationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              'assets/images/workout.png',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lower Body Training',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8), // Increased the spacing for consistency
                Text('Duration: 30 min'),
                SizedBox(height: 5),
                Text('Calories Burned: 300 kcal'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChallengeDetailScreen extends StatelessWidget {
  final String title;

  ChallengeDetailScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Challenge description goes here.'),
            SizedBox(height: 20),
            Text('Duration: 5 mins'),
            Text('Difficulty: Intermediate'),
          ],
        ),
      ),
    );
  }
}
