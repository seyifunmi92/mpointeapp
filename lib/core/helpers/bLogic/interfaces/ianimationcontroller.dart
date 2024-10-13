import 'package:flutter/material.dart';

abstract class IAnimationCtrl {
  Future<AnimationController> initializeAnimationCtrl(TickerProvider x);

  TickerFuture setAnimationDirection({bool isforward = true, bool isReverse = false, bool isfling = false, bool isRepeated = false});

  initAnimation(TickerProvider vsync, {int? sec, bool isforward = true, bool isReverse = false, bool isfling = false, bool isRepeated = false});

  Future<Animation<double>> getTurnsValue({double? x, required double y, AnimationController? controller, void Function()? listener, double? begininterval, double? endinterval, Curve? curve});

  Future<Animation<Offset>> getOffsetValue({x, y, bool isCurved = true, AnimationController? controller, double? beginInterval, double? endInterval, void Function()? callback, Curve? curve});

  Future<Animation<double>> getFadeValue({AnimationController? controller, Curve? curve, double? beginInterval, double? endinterval});

  Future implementAnimatedCounter({AnimationController? controller, value, Curve? curve, double? beginInterval, double? endInterval, void Function()? callback});

  Future<Animation<double>> getCounterValue(value, {AnimationController? controller, double? beginInterval, double? endInterval, void Function()? callback});

  updateAnimationListener();
}
