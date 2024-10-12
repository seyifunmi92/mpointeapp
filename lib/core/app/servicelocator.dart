import 'package:mpointe/main.dart';
import 'package:mpointe/core/app/app.dart';
import 'package:mpointe/core/utils/modals.dart';
import 'package:mpointe/core/app/materialapp.dart';
import 'package:mpointe/core/constants/images.dart';
import 'package:mpointe/core/helpers/bLogic/operations.dart';

Future<void> initializeServiceLocator() async => get

  ///entry point of app
  ..registerSingleton<MyApp>(MyApp.instance)
  ..registerLazySingleton<Images>(() => Images())

  ///register material app
  ..registerFactory<MApp>(() => MApp())
  ..registerSingleton<Modal>(Modal.instance)

  ///logic
  ..registerSingleton<LogicOperations>(Operations.instance)
  ..registerSingleton<Operations>(Operations.instance);
