import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Example"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                padding: EdgeInsets.all(20),
                minimumSize: Size(100, 50),
                backgroundColor: Colors.red,
                primary: Colors.white,
                elevation: 20,
                shadowColor: Colors.red,
                side: BorderSide(
                  color: Colors.cyan,
                  width: 3,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text("Text Button"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontFamily: "FuzzyBubbles",
                  fontSize: 15,
                ),
                primary: Colors.white,
                onSurface: Colors.blueAccent,
                elevation: 25,
                shadowColor: Colors.lightBlue,
                side: BorderSide(
                  color: Colors.orange,
                  width: 2,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),
          ],
        ),
      ),
    );
  }
}

// Classwork
class ButtonExample1 extends StatefulWidget {
  const ButtonExample1({Key? key}) : super(key: key);

  @override
  _ButtonExample1State createState() => _ButtonExample1State();
}

class _ButtonExample1State extends State<ButtonExample1> {
  final txtCtrl1 = TextEditingController();
  final txtCtrl2 = TextEditingController();

  String num1 = "";
  String num2 = "";
  String num3 = "";
  bool validate1 = false;
  bool validate2 = false;

  @override
  void dispose() {
    txtCtrl1.dispose();
    txtCtrl2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sum App"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.phone,
                controller: txtCtrl1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "1st Number",
                  hintText: "Enter the number here...",
                  errorText: validate1 ? "Empty field" : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                controller: txtCtrl2,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "2nd Number",
                  hintText: "Enter the number here...",
                  errorText: validate2 ? "Empty field" : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  primary: Colors.blueAccent,
                  elevation: 15,
                  shadowColor: Colors.blue,
                  side: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    num1 = txtCtrl1.text;
                    num2 = txtCtrl2.text;
                    num1.isEmpty ? validate1 = true : validate1 = false;
                    num2.isEmpty ? validate2 = true : validate2 = false;
                    if (num1.isEmpty == false && num2.isEmpty == false) {
                      int sum = int.parse(num1) + int.parse(num2);
                      num3 = "Sum: " + sum.toString();
                    } else {
                      num3 = "";
                    }
                  });
                },
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                num3,
                style: TextStyle(
                    color: Colors.green,
                    fontFamily: "Pacifico-Regular",
                    fontSize: 20),
              )
            ],
          ),
        ));
  }
}
