import 'package:mpointe/main.dart';
import 'package:mpointe/core/app/app.dart';
import 'package:mpointe/core/app/materialapp.dart';
import 'package:mpointe/core/constants/images.dart';

class AppManagers {
  AppManagers._();
  static AppManagers instance = AppManagers._();

  ///app managers
  MyApp get app => get<MyApp>();
  static MApp materialApp = get<MApp>();
}

class ImageHandler {
  static Images img = get<Images>();
}
