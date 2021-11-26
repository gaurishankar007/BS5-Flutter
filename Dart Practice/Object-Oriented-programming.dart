void main() {
  //creating an object
  var s = Student(7, "Gauri");
  var st = Student.myConstructor(8, "Shankar");
  print(s.id);
  print(s.name);
  print(st.id);
  print(st.name);

  var d = const Demo(1, 3); // or new Demo(1, 3);
  print(d.x);
  print(d.y);
}

class Student {
  //instance variables
  int? id;
  String? name;

  //default constructor
  //Student() {
  //  print("This is a default contructor");
  //}

  //paramiterized contructor
  Student(int id, String name) {
    this.id = id;
    this.name = name;
  }
  //Student(this.id, this.name) this is also allowed in dart programming language direct initialization

  //named constructor
  Student.myConstructor(int id, String name) {
    this.id = id;
    this.name = name;
  }
  //Student.myConstructor(this.id, this.name) this is also allowed in dart programming language direct initialization

  // function
  void sleep() {}
}

class Demo {
  final x;
  final y;
  // Contant constructor
  const Demo(this.y, this.x);
}
