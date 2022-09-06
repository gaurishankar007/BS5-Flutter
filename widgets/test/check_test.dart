import 'package:column_example/check.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("testing the sum() method", () {
    // Arrangement
    var arithmetic = Arithmetic();

    // Actual
    var actual = arithmetic.sum(2, 3);

    // Assert
    expect(actual, 5);
  });
}
