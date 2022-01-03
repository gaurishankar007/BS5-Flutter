import 'package:column_example/entity/person.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Interface1 extends StatefulWidget {
  const Interface1({Key? key}) : super(key: key);

  @override
  _Interface1State createState() => _Interface1State();
}

class _Interface1State extends State<Interface1> {
  final _formKey = GlobalKey<FormState>();
  String fName = "";
  String lName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Interface"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20),
              TextFormField(
                onSaved: (value) {
                  fName = value!;
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: "Empty Field"),
                ]),
                decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter your first name here...",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                onSaved: (value) {
                  lName = value!;
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: "Empty Field"),
                ]),
                decoration: InputDecoration(
                  labelText: "Last Name",
                  hintText: "Enter your last name here...",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Interface2(person: Person(fName, lName)),
                      ),
                    );
                  }
                },
                child: Text("Submit to interface2"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Interface3(person: Person(fName, lName)),
                      ),
                    );
                  }
                },
                child: Text("Submit to interface3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Statless
class Interface2 extends StatelessWidget {
  final Person? person;
  const Interface2({Key? key, @required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Screen"),
      ),
      body: Center(
        child: Text(
          "Received ${person!.fName} ${person!.lName}.",
          textScaleFactor: 2,
        ),
      ),
    );
  }
}

// statefull
class Interface3 extends StatefulWidget {
  final Person? person;
  const Interface3({Key? key, @required this.person}) : super(key: key);

  @override
  _Interface3State createState() => _Interface3State();
}

class _Interface3State extends State<Interface3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Screen"),
      ),
      body: Center(
        child: Text(
          "Received ${widget.person!.fName} ${widget.person!.lName}.",
          textScaleFactor: 2,
        ),
      ),
    );
  }
}

//
