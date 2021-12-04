import 'package:flutter/material.dart';
import 'package:flutter_container/screens/container.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container Example",
      home: ContainerScreen(),
    );
  }
}
