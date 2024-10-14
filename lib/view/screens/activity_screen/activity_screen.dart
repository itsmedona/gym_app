import 'package:flutter/material.dart';

/*
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart'; 

// Progress Tracking Screen (Left Side)
class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Tracking", style: GoogleFonts.lato()),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/profile_pic.png'), // Profile Pic
                    radius: 30,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Madison',
                          style: GoogleFonts.lato(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Text('Age: 25', style: GoogleFonts.lato()),
                      Text('75 Kg | 1.65 CM', style: GoogleFonts.lato()),
                    ],
                  ),
                ],
              ),
            ),
            // Calendar & Activity Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Workout Log",
                          style: GoogleFonts.lato(fontSize: 18)),
                      ElevatedButton(
                        child: Text("Charts", style: GoogleFonts.lato()),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChartScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CalendarWidget(),
                  SizedBox(height: 20),
                  ActivityTile(
                      "Upper Body Workout", "June 09", "25 Mins", "130 Kcal"),
                  ActivityTile("Full Out", "April 15", "30 Mins", "130 Kcal"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Charts Screen (Right Side)
class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Tracking", style: GoogleFonts.lato()),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Progress", style: GoogleFonts.lato(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    MaterialPageRoute(builder: (context) => ActivityScreen());
                  },
                  child: Text('Workout', style: GoogleFonts.lato()),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Charts', style: GoogleFonts.lato()),
                ),
              ],
            ),
            SizedBox(height: 20),
            BarChartWidget(),
            SizedBox(height: 20),
            StepDataTile('Thu 14', '3,679', '1hr40m'),
            StepDataTile('Wed 20', '5,789', '1hr30m'),
            StepDataTile('Sat 22', '1,859', '1hr10m'),
          ],
        ),
      ),
    );
  }
}

// Activity Tile Widget
class ActivityTile extends StatelessWidget {
  final String title;
  final String date;
  final String duration;
  final String calories;

  ActivityTile(this.title, this.date, this.duration, this.calories);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: FaIcon(FontAwesomeIcons.dumbbell),
        title: Text(title, style: GoogleFonts.lato()),
        subtitle: Text(date, style: GoogleFonts.lato()),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(duration, style: GoogleFonts.lato()),
            Text('$calories Kcal', style: GoogleFonts.lato()),
          ],
        ),
      ),
    );
  }
}

// Step Data Tile Widget
class StepDataTile extends StatelessWidget {
  final String day;
  final String steps;
  final String duration;

  StepDataTile(this.day, this.steps, this.duration);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(day, style: GoogleFonts.lato()),
        subtitle: Text('$steps Steps', style: GoogleFonts.lato()),
        trailing: Text(duration, style: GoogleFonts.lato()),
      ),
    );
  }
}

// Simple Calendar Widget (Dummy Data)
class CalendarWidget extends StatelessWidget {
  final List<String> dayNames = [
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Day names row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: dayNames.map((day) {
          return Expanded(
            child: Center(
              child: Text(
                day,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          );
        }).toList(),
      ),
      SizedBox(height: 8),
      //Calender Rows
      Container(
        height: 120,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemCount: 31,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: index == 11 ? Colors.amber : Colors.grey[700],
              ),
              child: Center(
                child: Text(
                  "${index + 1}",
                  style: GoogleFonts.lato(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}

// Dummy Bar Chart (for simplicity)
class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Bar(120),
          Bar(150),
          Bar(180),
          Bar(170),
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final double height;

  Bar(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: height,
      color: Colors.green,
    );
  }
}
*/

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('July 2022'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(7, (index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:
                            index == 0 ? Colors.lightGreen : Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Text(
                            ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            (10 + index).toString(),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20),
                // Today's report
                Text(
                  'Today Report',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // Active calories and cycling route
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('Active calories',
                              style: TextStyle(fontSize: 16)),
                          Text('645 Cal',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Column(
                            children: [
                              Text('Training time',
                                  style: TextStyle(fontSize: 16)),
                              SizedBox(height: 5),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: Colors.grey[300],
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.purple),
                                    strokeWidth: 8,
                                  ),
                                  Text('80%'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.directions_bike, color: Colors.white),
                            SizedBox(height: 5),
                            Container(
                              height: 100,
                              width: double.infinity,
                              color: Colors.white70,
                              child: Center(
                                  child: Text('Cycling Map',
                                      style: TextStyle(color: Colors.black))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Heart Rate, Steps, Sleep, and Water intake
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text('Heart Rate', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            Icon(Icons.favorite, color: Colors.red),
                            Text('79 Bpm',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text('Steps', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            Text('999/2000',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('Keep it Up!',
                                style: TextStyle(color: Colors.orange)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text('Sleep', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            Icon(Icons.bedtime, color: Colors.purple),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text('Water', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            Text('6/8 Cups',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
