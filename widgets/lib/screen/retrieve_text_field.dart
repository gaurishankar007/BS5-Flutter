import 'package:flutter/material.dart';

class RetrieveText extends StatefulWidget {
  const RetrieveText({Key? key}) : super(key: key);

  @override
  _RetrieveTextState createState() => _RetrieveTextState();
}

class _RetrieveTextState extends State<RetrieveText> {
  final textCtrl = TextEditingController();
  String name = "";
  bool _validate = false;

  @override
  void dispose() {
    textCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name = textCtrl.text;
            name.isEmpty ? _validate = true : _validate = false;
          });
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                // using controller inside TextField
                controller: textCtrl,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name here.",
                  errorText: _validate ? "field can not be empty" : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Classwork
class RetrieveText1 extends StatefulWidget {
  const RetrieveText1({Key? key}) : super(key: key);

  @override
  _RetrieveText1State createState() => _RetrieveText1State();
}

class _RetrieveText1State extends State<RetrieveText1> {
  final txtCtrl = TextEditingController();
  String email = "";
  bool validate = false;

  @override
  void dispose() {
    txtCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: txtCtrl,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email address here.",
                  errorText: validate ? "please enter your email first." : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    email = txtCtrl.text;
                    email.isEmpty ? validate = true : validate = false;   
                  });
                },
                child: Icon(
                  Icons.arrow_circle_down,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(email),
            ],
          ),
        ),
      ),
    );
  }
}
