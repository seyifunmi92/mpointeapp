import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static MyApp instance = const MyApp._internal();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => AppManagers.materialApp.maapp;
}
