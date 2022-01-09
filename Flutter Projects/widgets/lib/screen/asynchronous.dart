import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsynchronousProgramming extends StatefulWidget {
  const AsynchronousProgramming({Key? key}) : super(key: key);

  @override
  _AsynchronousProgrammingState createState() =>
      _AsynchronousProgrammingState();
}

class _AsynchronousProgrammingState extends State<AsynchronousProgramming> {
  @override  // This method will be called at first whenever this page is loaded in the screen
  void initState() {
    super.initState();
    printFileContent();
  }

  @override
  Widget build(BuildContext context) {
    // flutter_riverpod providers {
    final titleAppBar = Provider<String>((_) => "Asynchronous Programming");
    // Expects Future Instance
    final filecontent1 = FutureProvider.autoDispose<String>((_) => downloadFile());
    // }

    return Scaffold(
      appBar: AppBar(
        title: Consumer(builder: (BuildContext context, ref, child) {
          return Text(
            ref.watch(titleAppBar),
          );
        }),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "File Content",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Consumer(builder: (context, ref, child) {
              return ref.watch(filecontent1).when(
                data: (String value) {
                  return Text(value);
                },
                error: (error, stackTrace) {
                  return Text("Error");
                },
                loading: () {
                  return CircularProgressIndicator(
                    color: Colors.green,
                    backgroundColor: Colors.blue,
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  void printFileContent() async {
    Future<String> file = downloadFile();
    file.then((value) {
      print("The content of the file is:- $file.");
    });
  }

  Future<String> downloadFile() {
    Future<String> result = Future.delayed(Duration(seconds: 5), () {
      return "This is my secret file content.";
    });

    return result;
  }
}
