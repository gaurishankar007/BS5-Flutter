import 'package:floor/floor.dart';

class Person {
  final String? fName;
  final String? lName;

  Person(this.fName, this.lName);
}

// For Local Database
@entity
class Person1 {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  
  final String fName;
  final String lName;

  Person1({this.id, required this.fName, required this.lName});
}
