import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ResponsiveWithBreakpoints());
  }
}

class ResponsiveWithBreakpoints extends StatelessWidget {
  const ResponsiveWithBreakpoints({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;

    // Define breakpoints
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;
    //bool isDesktop = screenWidth >= 1024;

    return Scaffold(
      appBar: AppBar(title: Text("Responsive Breakpoints")),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color:
              isMobile
                  ? Colors.blue
                  : isTablet
                  ? Colors.orange
                  : Colors.green,
          child: Text(
            isMobile
                ? "Mobile View"
                : isTablet
                ? "Tablet View"
                : "Desktop View",
            style: TextStyle(
              color: Colors.white,
              fontSize:
                  isMobile
                      ? 18
                      : isTablet
                      ? 24
                      : 32,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
