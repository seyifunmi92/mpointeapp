import 'dart:async';

abstract class LogicOperations {
  Future<dynamic> callFutureMethod(int sec, FutureOr<dynamic> Function()? method);
}

class Operations implements LogicOperations {
  Operations._();

  static Operations instance = Operations._();
  @override

  ///call method in future
  Future<dynamic> callFutureMethod(int sec, FutureOr<dynamic> Function()? method) => Future.delayed(Duration(seconds: sec),  method);
}
