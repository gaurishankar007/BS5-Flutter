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
      backgroundColor: Colors.cyan,
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
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text("Go Back"),
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

// Classwork
class SICalculator extends StatefulWidget {
  const SICalculator({Key? key}) : super(key: key);

  @override
  _SICalculatorState createState() => _SICalculatorState();
}

class _SICalculatorState extends State<SICalculator> {
  final fristCtrl = TextEditingController();
  final secondCtrl = TextEditingController();
  final thirdCtrl = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  String result = "";

  interest<num>(p, r, t) {
    num si = (p * t * r) / 100;
    return si;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: myAppBar(context),
      body: Form(
        key: _fromKey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "SI Calculator",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Pacifico-Regular",
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
                    fontFamily: "FuzzyBubbles-Bold",
                  ),
                  decoration: InputDecoration(
                    labelText: "Principle",
                    hintText: "Enter the principle....",
                    suffixIcon: Icon(Icons.clear),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
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
                    fontFamily: "FuzzyBubbles-Bold",
                  ),
                  decoration: InputDecoration(
                    labelText: "Rate",
                    hintText: "Enter the rate....",
                    suffixIcon: Icon(Icons.clear),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
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
                  controller: thirdCtrl,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "FuzzyBubbles-Bold",
                  ),
                  decoration: InputDecoration(
                    labelText: "Time",
                    hintText: "Enter the time....",
                    suffixIcon: Icon(Icons.clear),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
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
                        primary: Colors.purple,
                        minimumSize: Size(40.0, 30.0),
                      ),
                      onPressed: () {
                        if (_fromKey.currentState!.validate()) {
                          setState(() {
                            result = (interest(
                                    int.parse(fristCtrl.text),
                                    int.parse(secondCtrl.text),
                                    int.parse(thirdCtrl.text)))
                                .toString();
                          });
                        }
                      },
                      child: Text(
                        "Claculate",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "FuzzyBubbles-Bold",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(40.0, 30.0),
                      ),
                      onPressed: () {
                        setState(() {
                          fristCtrl.text = "";
                          secondCtrl.text = "";
                          thirdCtrl.text = "";
                        });
                      },
                      child: Text(
                        "Clear Form",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "FuzzyBubbles-Bold",
                          fontSize: 15,
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
                        "Clear Result",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "FuzzyBubbles-Bold",
                          fontSize: 15,
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
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: 130,
                        height: 80,
                        child: Center(
                          child: Text(
                            "SI",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: "Pacifico-Regular",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: 130,
                        height: 80,
                        child: Center(
                          child: Text(
                            result,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "Pacifico-Regular",
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

