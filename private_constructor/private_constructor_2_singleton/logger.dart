/// Singleton pattern is a design pattern that ensures a class has only one instance
/// and provides a global point of access to that instance.'

class Logger {
  //private constructor
  const Logger._();

  //static instance of logger
  static Logger? _instance;

  // Public method to get or create the Logger instance
  static Logger getInstance() {
    // If an instance doesn't exist, create one
    if (_instance == null) {
      _instance = Logger._();
    } else {
      // If an instance already exists, throw an exception or handle accordingly
      throw Exception('Another instance of Logger cannot be created.');
    }
    return _instance!;
  }

  // Log method for demonstration
  void log(String message) {
    print('[${DateTime.now()}] $message');
  }
}
