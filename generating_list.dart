import 'dart:math';

class People {
  final String name;
  final int age;

  const People({required this.age, required this.name});
}

void main() {
  Random random = new Random();
  List listOfPeople = List.generate(
    10,
    (index) => People(
      age: random.nextInt(40) + (20 + index),
      name: 'People $index',
    ),
  );

  listOfPeople.map((e) => print('${e.name} ${e.age}')).toList();
}
