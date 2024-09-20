import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today Report'),
      ),
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView to avoiding overflow issues
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Calendar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('July 2024', style: TextStyle(fontSize: 18)),
                    SizedBox(width: 16),
                    CalendarButton(day: 'S', number: '10'),
                    CalendarButton(day: 'M', number: '11'),
                    CalendarButton(day: 'T', number: '18'),
                    CalendarButton(day: 'W', number: '13'),
                    CalendarButton(day: 'T', number: '14'),
                    CalendarButton(day: 'F', number: '15'),
                    CalendarButton(day: 'S', number: '17'),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Active Calories
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Active calories', style: TextStyle(fontSize: 14)),
                      SizedBox(height: 4),
                      Text('645 Cal',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              // Cycling
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.directions_bike, color: Colors.white),
                          SizedBox(width: 8),
                          Text('Cycling',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 16),
                      Image.asset('assets/images/cyclingmap.png',
                          width: 150, height: 150),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              // Training Time
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Training time', style: TextStyle(fontSize: 14)),
                      SizedBox(height: 4),
                      CircularProgressIndicator(
                        value: 0.8,
                        backgroundColor: Colors.grey[300],
                        color: Colors.purple[300],
                      ),
                      SizedBox(height: 4),
                      Text('80%', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              // Row of Heart Rate and Steps
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Heart Rate
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined, color: Colors.pink),
                        SizedBox(height: 4),
                        Text('Heart Rate',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Image.asset('assets/images/heart_rate.png',
                            width: 100, height: 60),
                        SizedBox(height: 4),
                        Text('79 BPM', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),

                  // Steps
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.directions_walk, color: Colors.yellow),
                        SizedBox(height: 4),
                        Text('Steps',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('999/2000', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // Keep it Up!
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  child: Text('Keep it Up!'),
                ),
              ),

              SizedBox(height: 16),

              // Row of Sleep and Water
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Sleep
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.nightlight_round, color: Colors.purple),
                        SizedBox(height: 4),
                        Text('Sleep',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Image.asset('assets/images/sleep_graph.png',
                            width: 100, height: 60),
                      ],
                    ),
                  ),

                  // Water
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.water_drop, color: Colors.blue),
                        SizedBox(height: 4),
                        Text('Water',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Image.asset('assets/images/waterglass.png',
                            width: 100, height: 60),
                        SizedBox(height: 4),
                        Text('6/8 Cups', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalendarButton extends StatelessWidget {
  final String day;
  final String number;

  const CalendarButton({Key? key, required this.day, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day, style: TextStyle(fontSize: 12)),
          SizedBox(height: 4),
          Text(number,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
