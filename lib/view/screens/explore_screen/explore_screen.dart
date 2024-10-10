import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/plank_challenge_screen.dart';
import 'widgets/sprint_challenge_screen.dart';
import 'widgets/squat_challenge_screen.dart';

// Main Screen
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/explore.png',
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Text(
                      'Best Quarantine \nWorkout',
                      style: GoogleFonts.lato(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              // Best for you Section
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Best for you',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1.4,
                      ),
                      itemCount: bestForYouWorkouts.length,
                      itemBuilder: (context, index) {
                        return WorkoutCard(
                          title: bestForYouWorkouts[index]['title']!,
                          time: bestForYouWorkouts[index]['time']!,
                          level: bestForYouWorkouts[index]['level']!,
                          image: bestForYouWorkouts[index]['image']!,
                        );
                      },
                    ),
                  ],
                ),
              ),
              // Challenge Section
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Challenge',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 180,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1,
                        ),
                        itemCount: challenges.length,
                        itemBuilder: (context, index) {
                          final color = challengeCardColors[
                              index % challengeCardColors.length];
                          return ChallengeCard(
                            title: challenges[index]['title']!,
                            image: challenges[index]['image']!,
                            color: color,
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PlankChallengeScreen(),
                                    ),
                                  );
                                  break;
                                case 1:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SprintChallengeScreen(),
                                    ),
                                  );
                                  break;
                                case 2:
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SquatChallengeScreen(),
                                    ),
                                  );
                                  break;
                                default:
                                  break;
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // Fast Warmup Section
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fast Warmup',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 300,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1.4,
                        ),
                        itemCount: warmupWorkouts.length,
                        itemBuilder: (context, index) {
                          return WorkoutCard(
                            title: warmupWorkouts[index]['title']!,
                            time: warmupWorkouts[index]['time']!,
                            level: warmupWorkouts[index]['level']!,
                            image: warmupWorkouts[index]['image']!,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, String>> bestForYouWorkouts = [
  {
    'title': 'Belly fat burner',
    'time': '10 min',
    'level': 'Beginner',
    'image': 'assets/images/belly_fat_burner.png',
  },
  {
    'title': 'Lose Fat',
    'time': '10 min',
    'level': 'Beginner',
    'image': 'assets/images/loose_fat.png',
  },
  {
    'title': 'Plank',
    'time': '5 min',
    'level': 'Expert',
    'image': 'assets/images/plank.png',
  },
  {
    'title': 'Build Biceps',
    'time': '30 min',
    'level': 'Intermediate',
    'image': 'assets/images/build_biceps.png',
  },
];

List<Map<String, String>> challenges = [
  {
    'title': 'Plank Challenge',
    'image': 'assets/images/plankchallenge.png',
  },
  {
    'title': 'Sprint Challenge',
    'image': 'assets/images/sprintchallenge.png',
  },
  {
    'title': 'Squat Challenge',
    'image': 'assets/images/squatchallenge.png',
  },
];

List<Map<String, String>> warmupWorkouts = [
  {
    'title': 'Leg Exercises',
    'time': '10 min',
    'level': 'Beginner',
    'image': 'assets/images/leg_exercise.png',
  },
  {
    'title': 'Backward Lunges',
    'time': '5 min',
    'level': 'Beginner',
    'image': 'assets/images/backward_lunges.png',
  },
];

// WorkoutCard class
class WorkoutCard extends StatelessWidget {
  final String title;
  final String time;
  final String level;
  final String image;

  const WorkoutCard({
    required this.title,
    required this.time,
    required this.level,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    time,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    level,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ChallengeCard class
class ChallengeCard extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final VoidCallback onTap;

  const ChallengeCard({
    required this.title,
    required this.image,
    required this.color,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Challenge Colors
List<Color> challengeCardColors = [
  Colors.redAccent,
  Colors.blueAccent,
  Colors.greenAccent,
];
