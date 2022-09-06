import "package:flutter/material.dart";

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('My Card'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text(
              'Gauri Shankar Sharma',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: "PinyonScript-Regular",
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            Text(
              'Flutter developer',
              style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+977 - 9816**14',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'gaurisharma358@gmail.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
