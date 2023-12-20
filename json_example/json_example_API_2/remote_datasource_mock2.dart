import 'dart:convert';

import 'model/user_data_model.dart';

class RemoteDataSourceMock2 {
  final String _jsonData = '''
[
  {
  "user": {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com"
  },
  "posts": [
    {
      "postId": 101,
      "title": "First Post",
      "content": "This is the content of the first post"
    },
    {
      "postId": 102,
      "title": "Second Post",
      "content": "This is the content of the second post"
    },
    {
      "postId": 103,
      "title": "Third Post",
      "content": "This is the content of the third post"
    }
  ]
},
{
  "user": {
    "id": 2,
    "name": "Jane Doe",
    "email": "jane@example.com"
  },
  "posts": [
    {
      "postId": 201,
      "title": "First Post",
      "content": "This is the content of the first post"
    },
    {
      "postId": 202,
      "title": "Second Post",
      "content": "This is the content of the second post"
    },
    {
      "postId": 203,
      "title": "Third Post",
      "content": "This is the content of the third post"
    }
  ]
},
{
  "user": {
    "id": 3,
    "name": "Angela Palmer",
    "email": "angelp@example.com"
  },
  "posts": [
    {
      "postId": 301,
      "title": "First Post",
      "content": "This is the content of the first post"
    },
    {
      "postId": 302,
      "title": "Second Post",
      "content": "This is the content of the second post"
    },
    {
      "postId": 303,
      "title": "Third Post",
      "content": "This is the content of the third post"
    }
  ]
}
]
''';

  Future<List<UserDataModel>> getUserDataListFromApi() {
    final List parsedJson = json.decode(_jsonData);

    // Deserialize the data into UserData objects
    final List<UserDataModel> listOfUserData =
        parsedJson.map((json) => UserDataModel.fromJson(json)).toList();

    return Future.delayed(
        const Duration(milliseconds: 1500), () => listOfUserData);
  }
}
