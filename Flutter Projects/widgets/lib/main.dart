import 'package:column_example/screen/alertdialog.dart';
import 'package:column_example/screen/asynchronous.dart';
import 'package:column_example/screen/button.dart';
import 'package:column_example/screen/local_database.dart';
import 'package:column_example/screen/data_pass_with_navigation.dart';
import 'package:column_example/screen/shared_preferences.dart';
import 'package:column_example/screen/list.dart';
import 'package:column_example/screen/radiobuttom.dart';
import 'package:column_example/screen/snackbar.dart';
import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // If you want to user riverpod
    // MyApp()
    
    // If you don't want to user riverpod
    ProviderScope(child:MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   // Define the default brightness and colors.
      //   brightness: Brightness.light,
      //   primaryColor: Colors.lightBlue[800],

      //   // Define the default font family.
      //   fontFamily: 'FuzzyBubbles-Regular',

      //   // Define the default `TextTheme`. Use this to specify the default
      //   // text styling for headlines, titles, bodies of text, and more.
      //   textTheme: const TextTheme(
      //     headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      //     headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //     bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      //   ),
      // ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context)=> Interface1(),
      //   '/button': (context)=> ButtonExample(),
      //   '/snackbar': (context)=> SnackBarExample(),
      //   '/alertdialog': (context)=> AlertDialogExample(),
      //   '/interface4': (context) => Interface4()
      // },
      title: "Form Example",
      home: LocalDatabase(),
    );
  }
}
