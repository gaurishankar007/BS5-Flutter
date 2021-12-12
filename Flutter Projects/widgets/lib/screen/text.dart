import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Example")),
      body: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        color: Colors.teal,
        child: Text(
          'Hello, Softwaricans. How are you?',
          //textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            overflow: TextOverflow.visible,
            decoration: TextDecoration.underline,
            decorationThickness: 2,
            decorationColor: Colors.red,
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
            letterSpacing: 5,
            wordSpacing: 8,
            backgroundColor: Colors.cyan,
          ),
        ),
      ),
    );
  }
}


class TextExample1 extends StatelessWidget {
  const TextExample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Example")),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.teal,
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Don\'t have an ',
              children: const [
                TextSpan(
                  text: 'account',
                  style: TextStyle(
                    letterSpacing: 5,
                    wordSpacing: 10,
                    color: Colors.blue,
                    fontSize: 40,
                  ),
                ),
                WidgetSpan(
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: 'SignUp!!!',
                  style: TextStyle(
                    letterSpacing: 3,
                    wordSpacing: 10,
                    fontSize: 25,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
