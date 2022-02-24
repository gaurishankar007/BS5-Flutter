// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:wear/wear.dart';

// // flutter run --no-sound-null-safety
// // or 
// // for other methods go to the below link
// // https://fluttercorner.com/cannot-run-with-sound-null-safety-because-dependencies-dont-support-null-safety/

// class WearOS extends StatefulWidget {
//   final String title;
//   const WearOS({ Key? key, required this.title }) : super(key: key);

//   @override
//   _WearOSState createState() => _WearOSState();
// }

// class _WearOSState extends State<WearOS> {
//   late String _text;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//       ),
//       body: WatchShape(
//         builder: (context, shape, child) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: <Widget>[
//                   TextFormField(
//                     onChanged: (value) {
//                       _text = value;
//                     },
//                     decoration: const InputDecoration(
//                       labelText: 'Text',
//                     ),
//                   ),
//                   SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Fluttertoast.showToast(
//                             msg: _text,
//                             toastLength: Toast.LENGTH_SHORT,
//                             gravity: ToastGravity.CENTER,
//                             timeInSecForIosWeb: 1,
//                             backgroundColor: Colors.red,
//                             textColor: Colors.white,
//                             fontSize: 16.0);
//                       },
//                       child: const Text('Add'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }