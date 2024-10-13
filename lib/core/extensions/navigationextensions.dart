import 'package:flutter/material.dart';

extension MQs on BuildContext {
  ///routing
  pushNamed(String name, {Object? args}) => Navigator.of(this).pushNamed(name, arguments: args);

  pushReplaced(String name, {Object? args}) => Navigator.of(this).pushReplacementNamed(name, arguments: args);

  replaceAll(String route, {Object? args}) => Navigator.of(this).pushNamedAndRemoveUntil(route, (x) => x.settings.name == route, arguments: args);

  push(Widget route) => Navigator.push(this, MaterialPageRoute(builder: (builder) => route));

  Future<void> pushReplacement(String route, {dynamic arguments}) async => await Navigator.of(this).pushReplacementNamed(route, arguments: arguments);

  Future<void> get pop async => Navigator.pop(this);
}
