import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:mpointe/core/app/servicelocator.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';

///entry point of app
void main() async => await initializeServiceLocator().then((x) => runApp(AppManagers.instance.app));
GetIt get = GetIt.instance;
