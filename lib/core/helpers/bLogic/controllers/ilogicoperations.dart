import 'dart:async';

abstract class ILogicOperations {
  Future<dynamic> callFutureMethod(int sec, FutureOr<dynamic> Function()? method);
}
