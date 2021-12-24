import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({Key? key}) : super(key: key);

  @override
  _AlertDialogExampleState createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog Example"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.red,
              elevation: 25.0,
              shadowColor: Colors.red,
              side: BorderSide(
                color: Colors.redAccent,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              showAlertDialog(context);
            },
            child: Text(
              "Show AlertDialog",
              style: TextStyle(fontFamily: "Pacifico-Regular"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.green,
              elevation: 25.0,
              shadowColor: Colors.green,
              side: BorderSide(
                color: Colors.greenAccent,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Go Back",
              style: TextStyle(fontFamily: "Pacifico-Regular"),
            ),
          ),
        ],
      ),
    );
  }
}

// making an external function for showing AlertDialog
showAlertDialog(BuildContext context) {
  // Setting up the buttons
  Widget okBtn = ElevatedButton(
    onPressed: () {},
    child: Text("Ok"),
  );
  Widget cancelBtn = ElevatedButton(
    onPressed: () {},
    child: Text("Cancel"),
  );

  // Seting up the alert dialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.cyan,
    title: Text("AlertDialog"),
    content: Text("Would you like to continue?"),
    actions: [okBtn, cancelBtn],
  );

  // Showing the dialog
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
