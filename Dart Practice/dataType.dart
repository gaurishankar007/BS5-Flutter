late String
    colname; // late variable will allow to initialize it when we needed.

void main() {
  // This is single line comment.
  /* This is
    a multiline
    comment.
  */

  var x; // In this variable, we can assign any data type of value like integer or string or other because it is not initialized yet.
  x = 10;
  x = "John";

  var y = 5; // In this variable, we can assign only integer data type  because it is already initialized with integer value.
  y = 10;
  // y = "John" this can not be done. 

  int id = 1;
  String name = 'hari';
  double pie =
      3.16; // but in dart programming language there is no float data type
  print("$name is your name and $id is your id.");

  var a = "Gauri";
  a = "Shankar";
  var b = 5;

  var name1;
  int id1;
  id1 = 5;
  String? name2;
  print("$name1");
  print(
      "$name2"); // This is nolable value, so if we don't initialize any value to it, then it will show null. "?" is used.
  print(
      "$id1"); // This is non-nolable value, so we have to initialize value to it. "?" is not used.
}

class student {
  late int id;
  String? name;
}
