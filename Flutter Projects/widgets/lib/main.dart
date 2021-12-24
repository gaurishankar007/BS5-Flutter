import 'package:column_example/screen/alertdialog.dart';
import 'package:column_example/screen/button.dart';
import 'package:column_example/screen/navigation.dart';
import 'package:column_example/screen/snackbar.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=> Navigation(),
        '/button': (context)=> ButtonExample(),
        '/snackbar': (context)=> SnackBarExample(),
        '/alertdialog': (context)=> AlertDialogExample(),
      },
      title: "Form Example",
      // home: MyForm(),
    );
  }
}