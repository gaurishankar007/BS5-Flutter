import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 50, 10, 15),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text("Help? I'm in a prison."),
            ),
          ),
        ),
      ),
    );
  }
}
