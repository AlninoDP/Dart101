class UserModel2 {
  final int id;
  final String name;
  final String email;

  UserModel2({required this.id, required this.name, required this.email});

  factory UserModel2.fromJson(Map<String, dynamic> json) {
    return UserModel2(id: json['id'], name: json['name'], email: json['email']);
  }
}
