import 'dart:async';
// ignore_for_file: prefer_final_fields

abstract class ILogicOperations {
  Future<dynamic> callFutureMethod(int sec, FutureOr<dynamic> Function()? method);
}

class Operations implements ILogicOperations {
  Operations._();

  static Operations instance = Operations._();

  double _r = 10;

  double get r => _r;

  int _selectedIndex = 2;

  int get selectedIndex => _selectedIndex;

  @override

  ///call method in future
  Future<dynamic> callFutureMethod(int sec, FutureOr<dynamic> Function()? method) => Future.delayed(Duration(seconds: sec), method);

  updateSelectedIndx(int value) {
    _selectedIndex = value;
  }
}
