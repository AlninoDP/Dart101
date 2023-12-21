import 'logger.dart';

void main(List<String> args) {
  final Logger logger = Logger.getInstance();
  logger.log('today');

  // if another instance is create it will throw exception
  // final Logger logger2 = Logger.getInstance();
}
