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
        appBar: AppBar(
          title: Text('Flutter Widgets'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Widget
              Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),

              SizedBox(height: 20),

              // Image Widget from assets
              Image.asset(
                'assets/2a image.jpg', // make sure the image is in assets folder
                width: 200,
              ),

              SizedBox(height: 20),

              // Container Widget with yellow background and black border
              Container(
                width: 200,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.yellow, // yellow background
                  border: Border.all(
                    color: Colors.black, // black border
                    width: 2,
                  ),
                ),
                child: Text('Hello World', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
