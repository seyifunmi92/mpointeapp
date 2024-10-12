import 'package:mpointe/main.dart';
import 'package:mpointe/core/app/app.dart';
import 'package:mpointe/core/utils/modals.dart';
import 'package:mpointe/core/app/materialapp.dart';
import 'package:mpointe/core/constants/images.dart';
import 'package:mpointe/core/helpers/bLogic/operations/operations.dart';
import 'package:mpointe/core/helpers/bLogic/interfaces/ianimationcontroller.dart';
import 'package:mpointe/core/helpers/bLogic/controllers/animationcontroller.dart';

///app handler
class AppManagers {
  AppManagers._();
  static AppManagers instance = AppManagers._();

  MyApp get app => get<MyApp>();
  static MApp materialApp = get<MApp>();
}

///image handler
class ImageHandler {
  static Images img = get<Images>();
}

///modal handler
class ShowModals {
  static Modal modals = get<Modal>();
}

///business logic handler
class Logic {
  static ILogicOperations logicoperations = get<ILogicOperations>();
  static Operations call = get<Operations>();
}

class AnimationManager {
  static IAnimationCtrl animation = get<IAnimationCtrl>();
  static AnimationCtrl controller = get<AnimationCtrl>();
}
