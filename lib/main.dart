import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/app/singletons/servicelocator.dart';

///entry point of app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeServiceLocator().then((x) => runApp(AppManagers.instance.app));
}

GetIt get = GetIt.instance;
