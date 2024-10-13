import 'package:mpointe/main.dart';
import 'package:mpointe/core/app/app.dart';
import 'package:mpointe/core/utils/modals.dart';
import 'package:mpointe/core/app/materialapp.dart';
import 'package:mpointe/core/constants/images.dart';
import 'package:mpointe/core/route_handler/routes.dart';
import 'package:mpointe/core/route_handler/route_logic.dart';
import 'package:mpointe/core/helpers/bLogic/operations/operations.dart';
import 'package:mpointe/core/helpers/bLogic/operations/animationlogic.dart';
import 'package:mpointe/core/helpers/bLogic/interfaces/ianimationcontroller.dart';
import 'package:mpointe/core/helpers/bLogic/controllers/animationcontroller.dart';


Future<void> initializeServiceLocator() async => get

  ///entry point of app
  ..registerSingleton<MyApp>(MyApp.instance)
  ..registerLazySingleton<Images>(() => Images())

  ///register material app
  ..registerFactory<MApp>(() => MApp())
  ..registerSingleton<Modal>(Modal.instance)

  ///logic
  ..registerSingleton<ILogicOperations>(Operations.instance)
  ..registerSingleton<Operations>(Operations.instance)

  //.animations
  ..registerFactory<IAnimationCtrl>(() => AnimationCtrl())
  ..registerFactory<AnimationCtrl>(() => AnimationCtrl())
  ..registerSingleton<AnimationLogic>(AnimationLogic.instance)

  ///routes
  ..registerSingleton<RouteLogic>(RouteLogic.instance)
  ..registerSingleton<Routes>(Routes.instance);
