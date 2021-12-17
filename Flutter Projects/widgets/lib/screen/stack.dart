import "package:flutter/material.dart";

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        alignment: Alignment.center,
        //fit: StackFit.loose,
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
              width: 300,
              height: 200,
              color: Colors.teal,
              child: const Text(
                'Container 1',
                textScaleFactor: 1.5,
              )),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Text(
                  'Container 2',
                  textScaleFactor: 1.5,
                )),
          ),
          Container(
              width: 50,
              height: 50,
              color: Colors.brown,
              child: const Text(
                '3',
                textScaleFactor: 1.5,
              )),
        ],
      ),
    ));
  }
}

class StackImage extends StatelessWidget {
  const StackImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("images/spidy.jpg"),
            const Positioned(
              left: 150,
              top: 150,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/god.jpg"),
              ),
            ),
            const Positioned(
              left: 130,
              child: Text(
                "Softwarica College",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Classwork extends StatelessWidget {
  const Classwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 50,
              top: 50,
              width: 200,
              child: Container(
                //margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50,),
                height: 400,
                width: 200,
                color: Colors.green,
                child: const Text(
                  "Green",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 100,
              width: 200,
              child: Container(
                height: 400,
                color: Colors.red,
                child: const Text(
                  "Red",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              left: 150,
              top: 150,
              width: 200,
              child: Container(
                height: 400,
                color: Colors.yellow,
                child: const Text(
                  "Yellow",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
