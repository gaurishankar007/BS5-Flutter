import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:motion_toast/motion_toast.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({Key? key}) : super(key: key);

  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  final _formKey = GlobalKey<FormState>();
  String username = "", password = "", fName = "", lName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register User"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  username = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter a username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  lName = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter a password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  fName = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter first name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  lName = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Lat Name",
                  hintText: "Enter last name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    try {
                      MotionToast.success(
                              title: "Success",
                              description: "Data inserted Successfully.")
                          .show(context);
                    } catch (err) {
                      MotionToast.error(
                              title: "Unsuccess",
                              description: "Error occurred !!!")
                          .show(context);
                    }
                  }
                },
                child: Text("Sign up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final _formKey = GlobalKey<FormState>();
  String username = "", password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login User"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  username = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter your username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  password = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    try {
                      MotionToast.success(
                              title: "Success",
                              description: "Data inserted Successfully.")
                          .show(context);
                    } catch (err) {
                      MotionToast.error(
                              title: "Unsuccess",
                              description: "Error occurred !!!")
                          .show(context);
                    }
                  }
                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
