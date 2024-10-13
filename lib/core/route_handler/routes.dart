import 'package:flutter/material.dart';

class Routes {
  Routes._internal();

  static Routes instance = Routes._internal();

  String get view1 => 'view1';

  String get view2 => "view2";
}
