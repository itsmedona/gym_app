import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lower Body Training', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            // Exercise with details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Time: 20 min'),
                Text('Burn: 95 kcal'),
              ],
            ),
            SizedBox(height: 20),
            Text('Rounds', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            WorkoutExerciseCard(), // Custom widget for workout
          ],
        ),
      ),
    );
  }
}
class WorkoutExerciseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/workout_image.jpg'), // Workout image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lower Body Training'),
            ),
          ],
        ),
      ),
    );
  }
}
