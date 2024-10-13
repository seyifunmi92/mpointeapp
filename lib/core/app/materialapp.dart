import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/feature/view1/presentation/pages/page1.dart';
import 'package:mpointe/feature/view2/presentation/pages/page2.dart';

class MApp {
  MApp._internal();
  static final MApp _materialApp = MApp._internal();
  factory MApp() => _materialApp;

  Widget get maapp => MaterialApp(routes: RouteManager.logic.router, debugShowCheckedModeBanner: false, home:  const Page2());
}
