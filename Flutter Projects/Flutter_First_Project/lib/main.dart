import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "This is first android app.",
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(),
        body: Center(
          child: Text("what's up softwaricans?"),
        ),
      ),
    ),
  );
}

// void main() {
//   runApp(
//     MaterialApp(
//       title: "This is first app",
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         appBar: AppBar(),
//         body: Center(
//           child: Text("Hello Softwarica"),
//         ),
//       ),
//     ),
//   );
// }
