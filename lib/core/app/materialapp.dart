import 'package:flutter/material.dart';
import 'package:mpointe/feature/view1/presentation/pages/page1.dart';

class MApp {
  MApp._internal();
  static final MApp _materialApp = MApp._internal();
  factory MApp() => _materialApp;

  Widget get maapp => const MaterialApp(debugShowCheckedModeBanner: false, home: Page1());
}
