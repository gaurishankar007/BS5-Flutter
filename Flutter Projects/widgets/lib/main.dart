import 'package:column_example/screen/navigation_interfaces.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context)=> Navigation(),
      //   '/button': (context)=> ButtonExample(),
      //   '/snackbar': (context)=> SnackBarExample(),
      //   '/alertdialog': (context)=> AlertDialogExample(),
      // },
      title: "Form Example",
      home: Interface1(),
    );
  }
}