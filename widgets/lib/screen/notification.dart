import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class FlutterNotification extends StatefulWidget {
  const FlutterNotification({Key? key}) : super(key: key);

  @override
  _FlutterNotificationState createState() => _FlutterNotificationState();
}

class _FlutterNotificationState extends State<FlutterNotification> {
  int _counter = 0;

  void notify() async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: 1,
          channelKey: 'key1',
          title: 'Follow',
          body: 'You have followed anuragh.',
          notificationLayout: NotificationLayout.BigPicture,
          bigPicture:
              'https://images.idgesg.net/images/article/2019/01/android-q-notification-inbox-100785464-large.jpg?auto=webp&quality=85,70'),
    );
  }

  void _incrementCounter() {
    setState(() {
      notify();
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
