import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SquatChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Squat Challenge",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              workoutItem("Curtsy Squat", "assets/images/squat1.png",
                  "A squat where one leg is crossed behind the other, resembling a curtsy. This variation targets the glutes and inner thighs"),
              SizedBox(height: 20),
              workoutItem("Bodyweight Squat", "assets/images/squat2.png",
                  "The most basic form of squat, performed without weights. Stand with feet shoulder-width apart, lower your hips back and down as if sitting in a chair, and keep your chest up and knees behind your toes. Return to standing."),
              SizedBox(height: 20),
              workoutItem("Goblet Squat", "assets/images/squat3.png",
                  "A squat performed while holding a weight (usually a dumbbell or kettlebell) at chest level. This variation helps maintain an upright torso and improves core stability while adding resistance."),
              SizedBox(height: 20),
              workoutItem("Pistel Squat", "assets/images/squat4.png",
                  "A single-leg squat where one leg is extended forward while lowering the body on the standing leg. This advanced move requires significant strength, balance, and flexibility."),
            ],
          ),
        ),
      ),
    );
  }

  Widget workoutItem(String title, String imagePath, String description) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[800],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
