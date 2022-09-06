import 'package:flutter/material.dart';

class SnackBarExample extends StatefulWidget {
  const SnackBarExample({Key? key}) : super(key: key);

  @override
  _SnackBarExampleState createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Example"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.deepPurple,
              elevation: 25.0,
              shadowColor: Colors.purple,
              side: BorderSide(
                color: Colors.purpleAccent,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              final snackbar = SnackBar(
                duration: Duration(seconds: 3),
                content: Text("SnackBar:- What's up?"),
                action: SnackBarAction(label: "Undo", onPressed: () {}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text(
              "Show SnackBar",
              style: TextStyle(fontFamily: "FuzzyBubbles-Regular"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.green,
              elevation: 25.0,
              shadowColor: Colors.green,
              side: BorderSide(
                color: Colors.greenAccent,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Go Back",
              style: TextStyle(fontFamily: "FuzzyBubbles-Regular"),
            ),
          ),
        ],
      ),
    );
  }
}
