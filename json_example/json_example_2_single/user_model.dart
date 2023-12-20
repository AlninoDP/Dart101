class User {
  final int userId;
  final String userName;
  final String password;

  User({required this.userId, required this.userName, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        userId: json['userId'],
        userName: json['userName'],
        password: json['password']);
  }
}
