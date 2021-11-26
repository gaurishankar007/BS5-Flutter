void main() {
  var s = Student();
  s.id = 2; //default setter
  print(s.id); //default getter
}

class Student {
  int? id;
  String? name;

  // custom setter function
  set value_id(int id) {
    this.id = id;
  }
  // custom getter function
  int get value_id {
    return this.id!;
  }
}
