import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mpointe/core/enums/device_orientation.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static MyApp instance = const MyApp._internal();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) => AppManagers.materialApp.maapp;
}
