/// The ternary operator is like if-else statement.
/// This is a one-liner replacement for the if-else statement.
/// It is used to write a conditional expression
/// where based on the result of a boolean condition, one of the two values is selected.

class Number {
  int number1;
  int number2;

  Number({required this.number1, required this.number2});

  int getHigherNumber() {
    // from this:
    // if (number1 > number2) {
    //   return number1;
    // } else {
    //   return number2;
    // }

    // to this:
    int higherNumber = (number1 > number2) ? number1 : number2;
    return higherNumber;
  }
}

void main() {
  final Number value1 = new Number(number1: 10, number2: -3);

  final x = value1.getHigherNumber();
  print('The highest number is $x');
}
