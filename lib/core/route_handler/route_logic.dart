import 'package:flutter/material.dart';
import 'package:mpointe/core/route_handler/routes.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/feature/view1/presentation/pages/page1.dart';
import 'package:mpointe/feature/view2/presentation/pages/page2.dart';

class RouteLogic {
  RouteLogic._internal();

  static RouteLogic instance = RouteLogic._internal();

  Map<String, Widget Function(BuildContext context)> get router => {
        RouteManager.next.view1: (context) => const Page1(),
        RouteManager.next.view2: (context) => const Page2(),
      };

  String getNamedRoute(Widget route) {
    switch (route) {
      case Page1():
        return Routes.instance.view1;

      case Page2():
        return Routes.instance.view2;

      default:
        return Routes.instance.view1;
    }
  }
}
