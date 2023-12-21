/// Generics is a way to create a class, or function that can work with different types of data (objects).
/// Generics provide a way to define classes, functions, and interfaces with placeholders for the types they operate on.
/// This allows you to create more flexible and reusable code.

// generic Classes
class Data<T> {
  T data;
  Data(this.data);

  // generic function
  T identity<T>(T value) {
    return value;
  }
}

void main(List<String> args) {
  final Data<String> data1 = Data<String>('StringData');
  print(data1.data);

  final Data<int> data2 = Data<int>(50);
  print(data2.data);

  final Data<double> data3 = Data<double>(20.3);
  print(data3.data);

  final Data<bool> data4 = Data<bool>(true);
  print(data4.data);
}
