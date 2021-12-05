
import 'package:flutter/material.dart';
import 'package:flutter_images/screen/image.dart';

void main() {
  runApp(ImageApp());
}

class ImageApp extends StatelessWidget {
  const ImageApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home page practice.",
      home: HomePage(), 
    );
  }
}
