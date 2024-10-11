import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SprintChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Sprint Challenge",
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
        physics: BouncingScrollPhysics(), // Improved scroll behavior
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              workoutItem("Hill Sprint", "assets/images/sprint1.png",
                  "Hill sprints are done by running up a steep incline. The incline adds resistance, which forces you to work harder, leading to strength development in your legs and core."),
              SizedBox(height: 20),
              workoutItem("Stair Sprints", "assets/images/sprint2.png",
                  "Sprinting up stairs adds a vertical challenge to running, which engages different muscle groups and increases the intensity of the workout. These sprints require strength and coordination, making them great for lower-body conditioning."),
              SizedBox(height: 20),
              workoutItem("Interval Sprint", "assets/images/sprint3.png",
                  " Interval Sprints involves short bursts of intense sprinting followed by periods of rest or low-intensity recovery. This method boosts both aerobic and anaerobic fitness in a time-efficient way."),
              SizedBox(height: 20),
              workoutItem("Acceleration Sprint", "assets/images/sprint4.png",
                  " These sprints focus specifically on the acceleration phase of running. Athletes begin from a stationary position and focus on quickly reaching top speed. This type of sprint is ideal for improving starts and quick bursts of speed."),
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
