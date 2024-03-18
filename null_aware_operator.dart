/// With null safety in dart, if you try to assign a nullable variable
/// to a non-nullable one without handling the possibility of null
/// you will get a compile-time error. To handle this we can use null-aware operator
/// such as ?., ??, !

void main(List<String> args) {
  /// null coalescing operator ('??')
  /// this operator used to provide a default value if the expression on its left
  /// evaluates to null
  print('-- null coalescing operator --');
  String? nullAbleString;
  String text = nullAbleString ?? 'Default Text';
  print(text); // Output: Default Text

  /// conditional access operator ('?.')
  /// used to access properties or method of an object if that object is NOT null
  /// if that object is null, it return null instead throwing exception
  print('-- conditional access operator --');
  Map<String, List<int>> cars = {
    'honda': [2, 1],
    'daihatsu': [1],
  };
  cars['daihatsu']?.add(2);
  cars['bmw']?.add(1); // will return null instead exception
  print(cars['daihatsu']);

  /// null assertion operator ('!')
  /// to assert that an expression will not evaluate to null
  /// will throw NullThrownError / NullException
  print('-- null assertion operator --');
  String? nullString;
  // nullString = 'message'; // uncomment to fix
  String txtMsg = nullString!; // will throw null exception
  print(txtMsg);
}
