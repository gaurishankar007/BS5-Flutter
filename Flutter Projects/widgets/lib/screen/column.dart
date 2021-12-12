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

// Classwork
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
            Text(
              "Gauri Shankar Sharma",
              style: TextStyle(
                fontSize: 35,
                fontFamily: "PinyonScript-Regular",
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Flutter Developper",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(10.0),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(children: const [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "977 - 98***14",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  ),
                ])),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              padding: EdgeInsets.all(10.0),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "gaurisharma358@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
