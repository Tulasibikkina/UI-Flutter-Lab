import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Layouts")),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                // ---------------- Row Layout ----------------
                Text(
                  "Row Layout",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(color: Colors.red, width: 50, height: 50),
                    Container(color: Colors.green, width: 50, height: 50),
                    Container(color: Colors.blue, width: 50, height: 50),
                  ],
                ),
                SizedBox(height: 30),

                // ---------------- Column Layout ----------------
                Text(
                  "Column Layout",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(color: Colors.orange, width: 50, height: 50),
                    Container(color: Colors.purple, width: 50, height: 50),
                    Container(color: Colors.yellow, width: 50, height: 50),
                  ],
                ),
                SizedBox(height: 30),

                // ---------------- Stack Layout ----------------
                Text(
                  "Stack Layout",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[300],
                  child: Stack(
                    children: [
                      Container(color: Colors.red, width: 100, height: 100),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                          color: Colors.green,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 40,
                        child: Container(
                          color: Colors.blue,
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
