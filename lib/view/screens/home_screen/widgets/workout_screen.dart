import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Workout",
          style: GoogleFonts.lato(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/workout.png',
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Lower Body Training",
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don’t use tools.",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Rounds",
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    workoutItem(
                        "Jumping Jacks", "00:30", 'assets/images/plank.png'),
                    workoutItem("Squats", "01:00", 'assets/images/pushup.png'),
                    workoutItem(
                        "Jumping Jacks", "00:30", 'assets/images/plank.png'),
                    workoutItem("Squats", "01:00", 'assets/images/pushup.png'),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Let's Workout",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget workoutItem(String title, String duration, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800], // Dark grey for card background
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Image.asset(
            image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(
            title,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            duration,
            style: GoogleFonts.lato(color: Colors.white70),
          ),
          trailing: Icon(Icons.play_arrow, color: Colors.white),
          onTap: () {},
        ),
      ),
    );
  }
}
