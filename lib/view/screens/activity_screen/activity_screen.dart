import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today Report', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            // Activity metrics
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MetricWidget(title: 'Active Calories', value: '645 Cal'),
                MetricWidget(title: 'Cycling', value: 'Training Time: 20 min'),
              ],
            ),
            SizedBox(height: 10),
            // More metrics like heart rate, steps, sleep, water
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MetricWidget(title: 'Hearth Rate', value: '79 bpm'),
                MetricWidget(title: 'Steps', value: '999/2000'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MetricWidget(title: 'Sleep', value: '7h'),
                MetricWidget(title: 'Water', value: '6/8 cups'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MetricWidget extends StatelessWidget {
  final String title;
  final String value;

  MetricWidget({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(height: 5),
        Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}