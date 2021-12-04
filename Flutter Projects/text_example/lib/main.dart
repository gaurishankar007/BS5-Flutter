import 'package:flutter/material.dart';
import 'package:text_example/screen/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Widget Example.",
      home: TextExample1(),
    );
  }
}
