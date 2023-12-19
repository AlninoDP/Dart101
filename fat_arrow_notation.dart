/// In Dart, we have fat arrow notation ( => ).
/// A fat arrow is used to define a single expression in a function.
/// This is a cleaner way to write functions with a single statement.
/// Fat arrow notation also known as arrow functions or lambda expressions

// from this:
// void main() {
//   print('hello world');
// }

// to this:
// void main() => print('hello world');

// from this:
// void add(int a, int b) {
//   print(a + b);
// }

// to this:
void add(int a, int b) => print(a + b);
void main() => add(5, 3);
