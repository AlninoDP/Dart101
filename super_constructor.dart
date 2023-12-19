/// super() used to call constructor of parent class
/// The colon ':' is used in the constructor of a subclass to indicate that you are about to call the constructor of the superclass

class People {
  final int id;
  final String name;
  People({required this.id, required this.name});

  void goToWork() {
    print('go To Some place');
  }
}

class Student extends People {
  final String grade;
  // Student({required super.id, required super.name, this.grade = 'F'});
  Student({required int id, required String name, this.grade = 'F'})
      : super(id: id, name: name);

  @override
  void goToWork() {
    print('go to school');
  }
}

class Worker extends People {
  final int salary;

  /// this mean we call the People class constructor then fill it with constructor Worker
  Worker({required int id, required String name, required this.salary})
      : super(id: id, name: name);

  @override
  void goToWork() {
    print('go to office');
  }
}

void main() {
  final student1 = Student(id: 1, name: 'John', grade: 'A');
  final worker1 = Worker(id: 2, name: 'Gloria', salary: 8000);

  print('${student1.grade}, ${student1.name}');
  student1.goToWork();

  print('${worker1.name}, \$${worker1.salary}');
  worker1.goToWork();
}
