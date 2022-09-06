import 'package:column_example/screen/form.dart';
import "package:flutter/material.dart";

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigators'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // navigating with push
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormExample(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text("Form Page"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // navigating with pushNamed which uses route
                Navigator.pushNamed(context, '/button');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: Text("Button Page"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // navigating with pushNamed which uses route
                Navigator.pushNamed(context, '/snackbar');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: Text("SnackBar Page"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // navigating with pushNamed which uses route
                Navigator.pushNamed(context, '/alertdialog');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: Text("AlertDialog Page"),
            )
          ],
        ),
      ),
    );
  }
}
