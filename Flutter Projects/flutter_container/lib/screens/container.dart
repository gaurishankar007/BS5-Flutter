import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      //drawer: Drawer(),
      // appBar: AppBar(
      //   title: Text("AppBar Example"),
      //   //leading: Icon(Icons.phone), // when using leading you con not use drawer
      // ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(color: Colors.black, width: 5,), // con not give color in container if you are using decoration inside a container or you can give background color inside dercoration
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          padding: EdgeInsets.symmetric(horizontal: 50),
          width: 300,
          height: 100,
          child: Text(
            'Softwaricans',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
