import 'package:column_example/screen/notification.dart';
import 'package:column_example/screen/streambuilder.dart';
import "package:flutter/material.dart";
import 'package:awesome_notifications/awesome_notifications.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
    null, // icon for your app notification
    [
      NotificationChannel(
        channelKey: 'key1',
        channelName: 'WatchMe',
        channelDescription: "You have got notification from WatchMe.",
        defaultColor: Colors.deepPurpleAccent[700],
        ledColor: Colors.white,
        playSound: true,
        enableLights: true,
        importance: NotificationImportance.High,
        enableVibration: true,
      )
    ],
  );

  runApp(
    MyApp(),

    // If you  want to use riverpod
    // ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: StreamBuilderExample(),
    );
  }
}
