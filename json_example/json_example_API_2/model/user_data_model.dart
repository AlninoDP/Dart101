import 'post_model.dart';
import 'user_model2.dart';

class UserDataModel {
  final UserModel2 userModel2;
  final List<PostModel> postModel;

  UserDataModel({required this.userModel2, required this.postModel});

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      userModel2: UserModel2.fromJson(json['user']),
      postModel: List<PostModel>.from(
        json["posts"].map(
          (jsonPost) => PostModel.fromJson(jsonPost),
        ),
      ),
    );
  }
}
