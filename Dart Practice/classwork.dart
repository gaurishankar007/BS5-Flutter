import 'dart:io';

void main() {
  print("Enter a number: ");
  var userInput = stdin.readLineSync();
  if (int.parse(userInput!) % 2 != 0) {
    print("The given number is Odd.");
  } else {
    print("The given number is Even.");
  }

  print("Again enter a letter: ");
  var text = stdin.readLineSync();
  switch (text) {
    case 'a':
      print("This is case 1.");
      break;
    case 'b':
      print("This is case 2.");
      break;
    case 'c':
      print("This is case 3.");
      break;
    default:
      print("This is case 4.");
  }

  var i = 1; // initialization
  while (i <= 5) {
    // conditinon
    print(i);
    i++; // increment
  }
}
