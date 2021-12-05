import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image(
              fit: BoxFit.fitWidth,
              image: AssetImage("images/846781.jpg"),
            ),
            Image.asset("images/profile.jpg", width: 100,),
            Image(
              image: NetworkImage("https://www.pixelstalk.net/wp-content/uploads/images5/Battlefield-2042-Desktop-Wallpaper.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
