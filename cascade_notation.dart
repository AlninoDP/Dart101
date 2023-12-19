/// The cascade notation (. .) in Dart allows us to make a sequence of operations on the same object (including function calls and field access).
/// This notation helps keep Dart code compact and removes the need to create temporary variables to store data.
class Calculate {
  final double valueA;
  final double valueB;

  const Calculate({required this.valueA, required this.valueB});

  void printFirstValues() {
    print(this.valueA);
    print(this.valueB);
  }

  void add() {
    double sum = valueA + valueB;
    print('$valueA + $valueB = $sum');
  }

  void subtract() {
    double sum = valueA - valueB;
    print('$valueA - $valueB = $sum');
  }

  void divide() {
    double sum = valueA / valueB;
    print('$valueA / $valueB = $sum');
  }

  void multiple() {
    double sum = valueA * valueB;
    print('$valueA * $valueB = $sum');
  }
}

void main() {
  final Calculate cal1 = new Calculate(valueA: 10, valueB: 5);

  print('Example of Cascade Notation');
  cal1
    ..printFirstValues()
    ..add()
    ..subtract()
    ..divide()
    ..multiple();
}
