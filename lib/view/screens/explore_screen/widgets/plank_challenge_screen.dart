import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlankChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Plank Challenge",
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
              workoutItem("Forearm Plank", "assets/images/plank1.png",
                  "This is a core-strengthening exercise that involves balancing on your forearms and toes. Keep your body in a straight line from head to heels."),
              SizedBox(height: 20),
              workoutItem("High Plank", "assets/images/plank2.png",
                  "The high plank is similar to a push-up position. It strengthens your shoulders, arms, and core while promoting overall body stability."),
              SizedBox(height: 20),
              workoutItem("Standard Plank", "assets/images/plank3.png",
                  "Begin in a push-up position with hands directly under your shoulders, body straight from head to heels. Engage your core and hold the position."),
              SizedBox(height: 20),
              workoutItem("Dolphin Plank", "assets/images/plank4.png",
                  "From a forearm plank, lift your hips towards the ceiling and then return to the plank position."),
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
