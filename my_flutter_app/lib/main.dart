// import 'package:flutter/material.dart';
// import 'package:my_flutter_app/main.dart';


// void main() {
//   runApp(const WidgetExplorerApp());
// }

// class WidgetExplorerApp extends StatelessWidget {
//   const WidgetExplorerApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Widget Explorer',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Widgets Demo'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Text Widget
//               const Text(
//                 'Hello, Flutter!',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),

//               const SizedBox(height: 20),

//               // Image Widget from network
//               Image.network(
//                 'my_flutter_app/assets/images/exp2.jpg',
//                 width: 100,
//                 height: 100,
//               ),

//               const SizedBox(height: 20),

//               // Container Widget with styling
//               Container(
//                 width: 150,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: Colors.blueAccent,
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 4,
//                       offset: Offset(2, 2),
//                     ),
//                   ],
//                 ),
//                 child: const Center(
//                   child: Text(
//                     'Container Widget',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Row Widget to align children horizontally
//               Row(
//                 children: const [
//                   Icon(Icons.favorite, color: Colors.red),
//                   SizedBox(width: 8),
//                   Text('Row with Icon and Text'),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // ElevatedButton Widget
//               ElevatedButton(
//                 onPressed: () {
//                   // You can add action here
//                   print('Button pressed!');
//                 },
//                 child: const Text('Click Me'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetExplorerApp());
}

class WidgetExplorerApp extends StatelessWidget {
  const WidgetExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Explorer',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text Widget
              const Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Image Widget from assets (not network)
              Image.asset(
                'assets/images/exp2.jpg',  // <-- use Image.asset here
                width: 100,
                height: 100,
              ),

              const SizedBox(height: 20),

              // Container Widget with styling
              Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Container Widget',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Row Widget to align children horizontally
              Row(
                children: const [
                  Icon(Icons.favorite, color: Colors.red),
                  SizedBox(width: 8),
                  Text('Row with Icon and Text'),
                ],
              ),

              const SizedBox(height: 20),

              // ElevatedButton Widget
              ElevatedButton(
                onPressed: () {
                  // You can add action here
                  print('Button pressed!');
                },
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
