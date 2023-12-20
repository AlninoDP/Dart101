import 'remote_datasource_mock.dart';

void main() async {
  final RemoteDataSourceMock remoteDataSourceMock = RemoteDataSourceMock();
  final randomAdvice = await remoteDataSourceMock.getRandomAdviceFromApi();

  print('Advice Number: ${randomAdvice.id}');
  print(randomAdvice.advice);
}
