import 'package:flutter/material.dart';

abstract class Animations {
  Future<AnimationController> initializeAnimationCtrl(TickerProvider x, {int? sec});

  TickerFuture setAnimationDirection({bool isforward = true, bool isReverse = false, bool isfling = false, bool isRepeated = false});

  updateAnimationListener();

  initAnimation(TickerProvider vsync, {int? sec, bool isforward = true, bool isReverse = false, bool isfling = false, bool isRepeated = false});
}

class AnimationCtrl implements Animations {
  AnimationCtrl._internal();
  static final AnimationCtrl _animation = AnimationCtrl._internal();
  factory AnimationCtrl() => _animation;

  late AnimationController _icontroller;

  get icontroller => _icontroller;

  Curve? _curve;

  Curve? get curve => _curve;

  ///initialize controller
  @override
  Future<AnimationController> initializeAnimationCtrl(TickerProvider x, {int? sec}) async => _icontroller = AnimationController(vsync: x, duration: Duration(seconds: sec ?? 3));

  ///set direction
  @override
  TickerFuture setAnimationDirection({bool isforward = true, bool isReverse = false, bool isfling = false, bool isRepeated = false}) {
    if (isforward && (isReverse = false) && (isfling = false) && (isRepeated = false)) return _icontroller.forward();

    if (isReverse = true && (isforward = false) && (isRepeated = false) && (isfling = false)) return _icontroller.reverse();

    if (isfling = true && (isforward = false) && (isReverse = false) && (isRepeated = false)) return _icontroller.fling();

    if (isRepeated = true && (isforward = false) && (isReverse = false) && (isfling = false)) return _icontroller.repeat();

    return _icontroller.forward();
  }

  ///update animation listender
  @override
  updateAnimationListener() => _icontroller.addListener(() => _icontroller.status == AnimationStatus.completed ? _icontroller.stop() : _icontroller.forward());

  ///initialize animation
  @override
  initAnimation(TickerProvider vsync, {int? sec, bool isforward = true, bool isReverse = false, bool isfling = false, bool isRepeated = false}) async {
    await initializeAnimationCtrl(vsync);

    await setAnimationDirection();

    await updateAnimationListener();
  }



  ///Tunns animation
  





  ///Offset animation
  




  ///Fade animation
  





  ///count offset animation
}
