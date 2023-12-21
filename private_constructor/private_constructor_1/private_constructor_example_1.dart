import 'unique_id.dart';

void main(List<String> args) {
// using factory no 1 to make instance
  UniqueId uniqueId = UniqueId();
  print(uniqueId.value);

// using factory no 2 to make instance
  UniqueId uniqueId2 = UniqueId.fromUniqueString('key123');
  print(uniqueId2.value);
}
