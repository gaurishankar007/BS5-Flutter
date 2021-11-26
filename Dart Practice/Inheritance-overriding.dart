void main() {
  var c = Child(5);
  c.a = 10;

  var p = Parent(3);
  p.a = 5;
}

class Parent {
  int? a;
  Parent(int a) {
    this.a = a;
    print("parent constructor");
  }
  void run() {}
}

class Child extends Parent {
  int? b;
  Child(this.b) : super(9);
  void fly() {}
}
