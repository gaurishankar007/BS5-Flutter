import "package:flutter/material.dart";
import "package:form_field_validator/form_field_validator.dart";
import "package:fluttertoast/fluttertoast.dart";

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New form validation.'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/spidy.jpg'),
                radius: 80,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onSaved: (value) {
                  email = value;
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: "Field is required"),
                  EmailValidator(errorText: "Invalid Email"),
                ]),
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email.....",
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onSaved: (value) {
                  password = value!;
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: "Field is required"),
                  MinLengthValidator(6,
                      errorText: "Provide at least 6 characters"),
                  MaxLengthValidator(15, errorText: "Less than 16 characters")
                ]),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password.....",
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Fluttertoast.showToast(msg: "Success");
                  } else {
                    Fluttertoast.showToast(msg: "Unsucess");
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                child: Text("Submit"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.reset();
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: Text("Clear"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
