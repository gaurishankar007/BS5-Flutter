import "package:flutter/material.dart";

class FormExample extends StatefulWidget {
  const FormExample({Key? key}) : super(key: key);

  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final fristCtrl = TextEditingController(text: "0");
  final secondCtrl = TextEditingController(text: "0");
  final _fromKey = GlobalKey<FormState>();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: myAppBar(context),
      body: Form(
        key: _fromKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Add two numbers",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "field is Empty";
                    }
                    return null;
                  },
                  controller: fristCtrl,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    labelText: "First Num",
                    hintText: "Enter the first number",
                    hintStyle: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "field is Empty";
                    }
                    return null;
                  },
                  controller: secondCtrl,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    labelText: "Second Num",
                    hintText: "Enter the second number",
                    hintStyle: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent,
                        minimumSize: Size(40.0, 30.0),
                      ),
                      onPressed: () {
                        if (_fromKey.currentState!.validate()) {
                          setState(() {
                            result = (int.parse(fristCtrl.text) +
                                    int.parse(secondCtrl.text))
                                .toString();
                          });
                        }
                      },
                      child: Text(
                        "Add",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        minimumSize: Size(40.0, 30.0),
                      ),
                      onPressed: () {
                        setState(() {
                          result = "";
                        });
                      },
                      child: Text(
                        "Clear",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        width: 130,
                        height: 80,
                        child: Center(
                          child: Text(
                            "Result",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        width: 130,
                        height: 80,
                        child: Center(
                          child: Text(
                            result,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AppBar myAppBar(BuildContext context) {
  return AppBar(title: Text("My form example."));
}
