///The symbol : in Dart, following the constructor definition is used to invoke the initializer list.
///The initializer list is a section where you can perform actions before the constructor body runs
///It's a way to initialize fields or perform other operations before the constructor body executes.

class Fruit {
  static int _fruitLastId =
      0; // make private static private attribute to know the fruit last id

  final int fruitId;
  final String name;
  final String color;
  final String taste;

  Fruit({required this.name, required this.color, required this.taste})
      : fruitId =
            _fruitLastId++; // assign fruitId to _fruitLastId and incrementing the _fruitLastId

// override toString() for faster print
  @override
  String toString() {
    return 'Fruit{fruitId: $fruitId, name: $name, color: $color, taste: $taste}';
  }
}

void main() {
  final fruit1 =
      Fruit(name: 'Orange', color: 'Orange', taste: 'Sweet and Sour');
  final fruit2 = Fruit(name: 'Strawberry', color: 'Yellow', taste: 'Sour');

  print(fruit1);
  print(fruit2);
}
