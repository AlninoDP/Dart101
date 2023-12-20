import 'model/post_model.dart';
import 'remote_datasource_mock2.dart';
import 'model/user_data_model.dart';

void main(List<String> args) async {
  final RemoteDataSourceMock2 remoteDataSourceMock2 = RemoteDataSourceMock2();
  final List<UserDataModel> listUserData =
      await remoteDataSourceMock2.getUserDataListFromApi();

  for (UserDataModel userData in listUserData) {
    print(
        'User: ${userData.userModel2.name}, Email: ${userData.userModel2.email}');
    print('Posts:');

    for (PostModel post in userData.postModel) {
      print('  Title: ${post.title}, Content: ${post.content}');
    }
  }
}
