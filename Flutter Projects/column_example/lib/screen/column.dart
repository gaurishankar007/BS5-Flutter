import "package:flutter/material.dart";

class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        //mainAxisSize: MainAxisSize.max,
        //verticalDirection: VerticalDirection.up, // starts from buttom and ends to up
        //mainAxisAlignment: MainAxisAlignment.center, // spacing between column weidgets
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.teal,
            width: 200,
            height: 100,
            child: Text(
              "Container1",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity, // fits with the screen size
            height: 100,
            child: Text(
              "Container2",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            width: 200,
            height: 100,
            child: Text(
              "Container3",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                  fontFamily: "fonts/PinyonScript-Regular.ttf",
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
