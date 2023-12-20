import 'dart:convert';

import 'user_model.dart';

void main(List<String> args) {
  final String jsonData =
      ' {"userId": 1, "userName": "JonhDoe1234", "password": "J0hnD0e007"}';

  // parse the json data
  final parsedJson = json.decode(jsonData);

  // create a user model from json data
  final user1 = User.fromJson(parsedJson);

  print(user1.userId);
  print(user1.userName);
  print(user1.password);
}
