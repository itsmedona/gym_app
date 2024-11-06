import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('July 2024'),
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date row with gradient background
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(7, (index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: index == 0
                            ? LinearGradient(
                                colors: [Colors.lightGreen, Colors.green])
                            : LinearGradient(
                                colors: [Colors.grey[300]!, Colors.grey[400]!]),
                        borderRadius: BorderRadius.circular(10),
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
                // Today's report title with a custom color
                Text(
                  'Today Report',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: 10),
                // Active calories and cycling route section
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('Active Calories',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87)),
                          Text('645 Cal',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent)),
                          SizedBox(height: 10),
                          Column(
                            children: [
                              Text('Training Time',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black87)),
                              SizedBox(height: 5),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation(
                                        Colors.purpleAccent),
                                    strokeWidth: 8,
                                  ),
                                  Text(
                                    '80%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purpleAccent),
                                  ),
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
                          gradient: LinearGradient(
                              colors: [Colors.black87, Colors.grey[800]!]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.directions_bike, color: Colors.white),
                            SizedBox(height: 5),
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  'Cycling Map',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Heart Rate, Steps, Sleep, and Water intake with vibrant colors
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          gradient: LinearGradient(
                              colors: [Colors.pink[200]!, Colors.pink[100]!]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text('Heart Rate',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.red[800])),
                            SizedBox(height: 10),
                            Icon(Icons.favorite, color: Colors.red),
                            Text('79 Bpm',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.orange[300]!,
                            Colors.orange[100]!
                          ]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text('Steps',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.deepOrange)),
                            SizedBox(height: 10),
                            Text('999/2000',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange)),
                            Text('Keep it Up!',
                                style: TextStyle(color: Colors.orange[700])),
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
                          gradient: LinearGradient(colors: [
                            Colors.purple[300]!,
                            Colors.purple[100]!
                          ]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text('Sleep',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.deepPurple)),
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
                          gradient: LinearGradient(
                              colors: [Colors.blue[300]!, Colors.blue[100]!]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text('Water',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.blue)),
                            SizedBox(height: 10),
                            Text('6/8 Cups',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent)),
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
