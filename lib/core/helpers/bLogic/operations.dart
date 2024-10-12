abstract class LogicOperations {
  Future<void> callFutureMethod(int sec, void Function()? method);
}

class Operations implements LogicOperations {
  Operations._();

  static Operations instance = Operations._();
  @override

  ///call method in future
  Future<void> callFutureMethod(int sec, void Function()? method) async => await Future.delayed(Duration(seconds: sec), method);
}
