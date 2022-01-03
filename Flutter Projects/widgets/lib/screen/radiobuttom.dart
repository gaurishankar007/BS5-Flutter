import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RadioEnum extends StatefulWidget {
  const RadioEnum({Key? key}) : super(key: key);

  @override
  _RadioEnumState createState() => _RadioEnumState();
}

enum Gender { male, female, other }

class _RadioEnumState extends State<RadioEnum> {
  final _title = 'Radio Enum style';
  Gender? _val = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('select your gender:'),
          ListTile(
            title: const Text('Male'),
            leading: Radio(
              value: Gender.male,
              groupValue: _val,
              onChanged: (Gender? value) {
                setState(() {
                  _val = value;
                });
                if (_val == Gender.male) {
                  Fluttertoast.showToast(
                    msg: 'you have selected male',
                    gravity: ToastGravity.CENTER,
                    textColor: Colors.red,
                  );
                }
              },
            ),
          ),
          ListTile(
            title: const Text('female'),
            leading: Radio(
              value: Gender.female,
              groupValue: _val,
              onChanged: (Gender? value) {
                setState(() {
                  _val = value;
                });
                if (_val == Gender.female) {
                  Fluttertoast.showToast(
                    msg: 'you have selected female',
                    gravity: ToastGravity.CENTER,
                    textColor: Colors.red,
                  );
                }
              },
            ),
          ),
          ListTile(
            title: const Text('other'),
            leading: Radio(
              value: Gender.other,
              groupValue: _val,
              onChanged: (Gender? value) {
                setState(() {
                  _val = value;
                });
                if (_val == Gender.other) {
                  Fluttertoast.showToast(
                    msg: 'you have selected other',
                    gravity: ToastGravity.CENTER,
                    textColor: Colors.red,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RadioQuiz extends StatefulWidget {
  const RadioQuiz({Key? key}) : super(key: key);

  @override
  _RadioQuizState createState() => _RadioQuizState();
}

class _RadioQuizState extends State<RadioQuiz> {
  String? q1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('1. _____ is animal.', textScaleFactor: 2),
            RadioListTile(
                title: const Text('Cat'),
                value: 'cat',
                groupValue: q1,
                onChanged: (value) {
                  setState(() {
                    q1 = value.toString();
                  });
                }),
            RadioListTile(
              title: const Text('Man'),
              value: 'man',
              groupValue: q1,
              onChanged: (value) {
                setState(() {
                  q1 = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text('Tree'),
              value: 'tree',
              groupValue: q1,
              onChanged: (value) {
                setState(() {
                  q1 = value.toString();
                });
              },
            ),
            const Divider(
              height: 4,
              color: Colors.red,
            ),
            Text('$q1 is selectd'),
          ],
        ),
      ),
    );
  }
}