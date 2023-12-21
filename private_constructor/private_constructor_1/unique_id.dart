import 'dart:math';

class UniqueId {
  final String value;

  // private constructor
  const UniqueId._(this.value);

//factory constructor no 1
  factory UniqueId() {
    Random random = Random();
    final randomNumber = random.nextInt(100);
    return UniqueId._(randomNumber.toString());
  }

//factory constructor no 2
  factory UniqueId.fromUniqueString(String uniqueString) {
    return UniqueId._(uniqueString);
  }
}
