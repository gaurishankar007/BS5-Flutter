import "package:flutter/material.dart";

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            child: Center(
              child: Text("Red"),
            ),
          ),
          Container(
            color: Colors.green,
            width: 210,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text("Yellow"),
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text("Red"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            child: Center(
              child: Text(
                "Blue",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "FuzzyBubbles",
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
