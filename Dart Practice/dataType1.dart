import 'dart:io';

void main() {
  print("enter a text: ");
  var text = stdin.readLineSync();
  var number = int.parse(
      text!); // Converting from string to integer. "!" is used because it is user input value and he can not enter any data then it will be null value, so.
  var strVar = number.toString();
  print(number);
  print(text.runtimeType);
  print(number.runtimeType);

  dynamic a =
      10; // This overcomes the disability of var data types. we can not do this using var data type.
  a = "Shyam";
  a = 5.6;
  a = true;
 
  var p = 10;
  var q = 5;
  var r = (p > q) ? "p is greater." : "q is greater."; // stores the greatest value
  print(r);

  var m = null;
  var n = 3;
  var o = m ?? n; // stores the not null value
  print(o);

  var s = new Studnet(); // calling class student
  s.id = 10;
  s.name = "Gauri";
  var st = Studnet() // no need to type "new" in dart programming language if you want.
    ..id = 5
    ..name = "Syam";
}

class Studnet {
  int? id;
  String? name;
}
