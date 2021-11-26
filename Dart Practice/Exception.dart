import "dart:io";

void main() {
  try {
    // runs if no error is occurred
    print("Enter the first number");
    var a = int.parse(stdin.readLineSync()!);

    print("Enter the second number");
    var b = int.parse(stdin.readLineSync()!);
    var c = a ~/ b;
    print("The answer is $c");
  } on IntegerDivisionByZeroException {
    // if you know the type of error then use "on"
    print("Can not divide by zero.");
  }

  try {
    print("Enter the first number");
    var a = int.parse(stdin.readLineSync()!);

    print("Enter the second number");
    var b = int.parse(stdin.readLineSync()!);
    var c = a ~/ b;
    print("The answer is $c");
  } catch (e) {
    // runs if error is occured
    print("Can not divide by zero.");
  } finally {
    // runs always even the error is occured or not
    print("I am finnaly");
  }
}
