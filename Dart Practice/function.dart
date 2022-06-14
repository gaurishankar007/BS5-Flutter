void main() {
  var c = sum(2, 3);
  print("The sum is $c.");

  printCities('ktm', 'pokhara', city3: 'morang', city4: "jhapa");

  // Anonymous function
  var l = [10, 20, 30, 40];
  l.forEach((element) {
    print('square: ${element * element}');
  });

  print(DateTime.now().hour.runtimeType);
}

//Collable function
int sum(int a, int b) {
  return (a + b);
}

// Another way
int sum1(int a, int b) => (a + b);

void printCities(String city1, String city2,
    {String? city3, String? city4 = "Chitwan"}) {
  print(city1);
  print(city2);
  print(city3);
  print(city4);
}
