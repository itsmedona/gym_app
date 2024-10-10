import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            // Greeting Text
            Text(
              'Good Morning \nPramuditya Uzumaki',
              style:
                  GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            //Search
            TextField(
              decoration: InputDecoration(
                hintText: 'Search ...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              ),
            ),
            SizedBox(height: 20),
            // Popular Workouts Section
            Text(
              'Popular Workouts',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return WorkoutCard();
                },
              ),
            ),
            SizedBox(height: 20),
            // Today's Plan Section
            Text(
              'Today Plan',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w900),
            ),
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
      width: 315,
      margin: EdgeInsets.only(right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Stack(
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                'assets/images/workout.png',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Text over the image
            Positioned(
              left: 8,
              top: 8,
              child: Text(
                'Lower Body Training',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // Duration rectangle
            Positioned(
              left: 8,
              bottom: 40,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Duration: 30 min',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            // Kcal rectangle
            Positioned(
              left: 8,
              bottom: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '300 kcal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
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
          progress: 0.7, // 70% progress
        ),
        PlanItem(
          image: 'assets/images/situp.png',
          title: 'Sit Up',
          description: '20 Sit Ups a day',
          level: 'Beginner',
          progress: 0.4, // 40% progress
        ),
        SizedBox(height: 10),
        PlanItem(
          image: 'assets/images/knee_pushup.png',
          title: 'Knee Push Up',
          description: '15 Knee Push Ups a day',
          level: 'Beginner',
          progress: 0.2, // 20% progress
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
  final double progress;

  PlanItem({
    required this.image,
    required this.title,
    required this.description,
    required this.level,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 130,
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        description,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      // Progress Bar
                      LinearProgressIndicator(
                        value: progress,
                        backgroundColor: Colors.grey[300],
                        color: Color.fromARGB(186, 146, 242, 44),
                        minHeight: 8, // Height of the progress bar
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Level Container in the top-right corner
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                level,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
