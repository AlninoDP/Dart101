import 'dart:convert';

import 'person_model.dart';

void main(List<String> args) {
  final String jsonData = '''
[
  {"id": 1, "name": "John Doe", "age": 25, "gender": "Male"},
  {"id": 2, "name": "Jane Doe", "age": 22, "gender": "Female"},
  {"id": 3, "name": "Dave Austin", "age": 29, "gender": "Male"},
  {"id": 4, "name": "Steve Winston", "age": 18, "gender": "Male"},
  {"id": 5, "name": "Rosaline Violet", "age": 22, "gender": "Female"}
]
  ''';

  // parse jsonData
  final List parsedJson = json.decode(jsonData);

  // create list of Person instance from jsonMap
  final List<Person> personList =
      parsedJson.map((json) => Person.fromJson(json)).toList();

  for (Person person in personList) {
    print('Person ID: ${person.id}');
    print('Person Name: ${person.name}');
    print('Person Age: ${person.age}');
    print('Person Gender: ${person.gender}');
    print('----------------------');
  }
}
