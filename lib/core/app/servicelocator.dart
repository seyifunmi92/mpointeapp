import 'package:mpointe/main.dart';
import 'package:mpointe/core/app/app.dart';
import 'package:mpointe/core/utils/modals.dart';
import 'package:mpointe/core/app/materialapp.dart';
import 'package:mpointe/core/constants/images.dart';

Future<void> initializeServiceLocator() async => get

  ///entry point of app
  ..registerSingleton<MyApp>(MyApp.instance)
  ..registerLazySingleton<Images>(() => Images())

  ///register material app
  ..registerFactory<MApp>(() => MApp())

  ..registerSingleton<Modal>(Modal.instance);
