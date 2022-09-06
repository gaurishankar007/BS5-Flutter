import "package:flutter/material.dart";

// StatelessWidget
class TextFieldExample extends StatelessWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.search,
            keyboardType: TextInputType.phone,
            //maxLength: 5,
            //maxLines: 2,
            //obscureText: true, // hides the characters with "."
            //obscuringCharacter: "*",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "Name",
              hintText: "Enter your name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )),
    ));
  }
}

// StatefulWidget
class TextFieldExample1 extends StatefulWidget {
  const TextFieldExample1({Key? key}) : super(key: key);

  @override
  _TextFieldExample1State createState() => _TextFieldExample1State();
}

class _TextFieldExample1State extends State<TextFieldExample1> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              textCapitalization: TextCapitalization.words,
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter your username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Your username is $name.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


