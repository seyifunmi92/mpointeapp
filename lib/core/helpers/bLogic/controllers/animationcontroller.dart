import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mpointe/core/helpers/bLogic/interfaces/ianimationcontroller.dart';
// ignore_for_file: prefer_final_fields, prefer_const_constructors

class AnimationCtrl implements IAnimationCtrl {
  AnimationCtrl._internal();
  static final AnimationCtrl _animation = AnimationCtrl._internal();
  factory AnimationCtrl() => _animation;

  late AnimationController _icontroller;

  get icontroller => _icontroller;

  Curve? _curve;

  Curve? get curve => _curve;

  double _counter = 0.0;

  double get counter => _counter;

  final Random _rnd = Random();

  Duration _icontrollerDuration = Duration(seconds: 3);

  Duration get icontrollerDuration => _icontrollerDuration;

  ///initialize controller
  @override
  Future<AnimationController> initializeAnimationCtrl(TickerProvider x, {int? s}) async => _icontroller = AnimationController(vsync: x, duration: Duration(seconds: s ?? 4));

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
  initAnimation(
    TickerProvider vsync,
   {
    int? sec,
    bool isforward = true,
    bool isReverse = false,
    bool isfling = false,
    bool isRepeated = false,
  }) async {
    await initializeAnimationCtrl(vsync, s: sec);

    await setAnimationDirection();

    await updateAnimationListener();
  }

  ///Tunns animation
  @override
  Future<Animation<double>> getTurnsValue({double? x, required double y, AnimationController? controller, void Function()? listener}) async {
    Animation<double> x = Tween(begin: 0.0, end: y).animate(controller ?? _icontroller)
      ..addListener(listener!)
      ..addStatusListener((status) {});

    setAnimationDirection();

    return x;
  }

  ///Offset animation
  @override
  Future<Animation<Offset>> getOffsetValue({x, y, bool isCurved = true, AnimationController? controller}) async => Tween<Offset>(begin: isCurved ? Offset(x, y) : Offset.zero, end: isCurved ? Offset.zero : Offset(x, y)).animate(isCurved ? CurvedAnimation(parent: controller ?? _icontroller, curve: curve ?? _curve!) : ReverseAnimation(controller ?? _icontroller));

  ///Fade animation
  @override
  Future<Animation<double>> getFadeValue({AnimationController? controller, Curve? curve}) async {
    return CurvedAnimation(parent: controller ?? _icontroller, curve: curve ?? Curves.fastOutSlowIn);
  }

  ///count offset animation
  @override
  Future implementAnimatedCounter({AnimationController? controller, value, Curve? curve}) async => await getCounterValue(value, controller: controller).then((x) => setAnimationDirection());

  ///get counter value
  @override
  Future<Animation<double>> getCounterValue(value, {AnimationController? controller}) async => Tween<double>(begin: 0, end: (_counter += _rnd.nextInt(value) + 2)).animate(CurvedAnimation(parent: controller ?? _icontroller, curve: curve ?? Curves.fastOutSlowIn));

  updateControllerDuration(int s) {
    _icontrollerDuration = Duration(seconds: s);
  }
}
