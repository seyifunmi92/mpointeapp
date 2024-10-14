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

  late AnimationController _icontroller2;

  get icontroller2 => _icontroller2;

  late AnimationController _icontroller3;

  get icontroller3 => _icontroller3;

  Curve? _curve;

  Curve? get curve => _curve;

  double _counter = 0.0;

  double get counter => _counter;

  final Random _rnd = Random();

  Duration _icontrollerDuration = Duration(seconds: 3);

  Duration get icontrollerDuration => _icontrollerDuration;

  ///initialize controller
  @override
  Future<AnimationController> initializeAnimationCtrl(TickerProvider x, {int? s}) async => _icontroller = AnimationController(vsync: x, duration: Duration(seconds: s ?? 8));

  Future<AnimationController> initializeAnimationCtrl2(TickerProvider x, {int? s}) async => _icontroller2 = AnimationController(vsync: x, duration: Duration(seconds: s ?? 7));

  Future<AnimationController> initializeAnimationCtrl3(TickerProvider x, {int? s}) async => _icontroller3 = AnimationController(vsync: x, duration: Duration(seconds: s ?? 7));

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
    TickerProvider vsync, {
    int? sec,
    bool isforward = true,
    bool isReverse = false,
    bool isfling = false,
    bool isRepeated = false,
  }) async {
    await initializeAnimationCtrl(vsync, s: sec);
    _icontroller2.forward();
    await updateAnimationListener();
  }

  initAnimation2(
    TickerProvider vsync, {
    int? sec,
    bool isforward = true,
    bool isReverse = false,
    bool isfling = false,
    bool isRepeated = false,
  }) async {
    await initializeAnimationCtrl2(vsync, s: sec);
    _icontroller2.forward();
    _icontroller2.addListener(() => _icontroller2.status == AnimationStatus.completed ? _icontroller2.stop() : _icontroller2.forward());
  }

  initAnimation3(
    TickerProvider vsync, {
    int? sec,
    bool isforward = true,
    bool isReverse = false,
    bool isfling = false,
    bool isRepeated = false,
  }) async {
    await initializeAnimationCtrl3(vsync, s: sec);
    _icontroller3.forward();
    _icontroller3.addListener(() => _icontroller3.status == AnimationStatus.completed ? _icontroller3.stop() : _icontroller3.forward());
  }

  ///Tunns animation
  @override
  Future<Animation<double>> getTurnsValue({double? x, required double y, AnimationController? controller, void Function()? listener, double? begininterval, double? endinterval, Curve? curve}) async {
    Animation<double> t = Tween<double>(begin: x ?? 0.0, end: y).animate(CurvedAnimation(parent: controller ?? _icontroller, curve: Interval(begininterval ?? 0.0, endinterval ?? 1.0, curve: curve ?? Curves.easeIn)))
      ..addListener(listener!)
      ..addStatusListener((status) {});

    //setAnimationDirection();

    return t;
  }

  ///Offset animation
  @override
  Future<Animation<Offset>> getOffsetValue({x, y, bool isCurved = true, AnimationController? controller, double? beginInterval, double? endInterval, void Function()? callback, Curve? curve}) async {
    x = Tween<Offset>(begin: isCurved ? Offset(x, y) : Offset.zero, end: isCurved ? Offset.zero : Offset(x, y)).animate(isCurved
        ? CurvedAnimation(parent: controller ?? _icontroller, curve: Interval(beginInterval ?? 0.0, endInterval ?? 1.0, curve: curve ?? Curves.easeIn))
        : ReverseAnimation(
            controller ?? _icontroller,
          ))
      ..addListener(callback!)
      ..addStatusListener((status) {});

    return x;
  }

  ///Fade animation
  @override
  Future<Animation<double>> getFadeValue({AnimationController? controller, Curve? curve, double? beginInterval, double? endinterval}) async {
    return CurvedAnimation(
        parent: controller ?? _icontroller,
        curve: Interval(
          beginInterval ?? 0.0,
          endinterval ?? 1.0,
          curve: curve ?? Curves.fastOutSlowIn,
        ));
  }

  ///count offset animation
  @override
  Future implementAnimatedCounter({AnimationController? controller, value, Curve? curve, double? beginInterval, double? endInterval, void Function()? callback}) async =>
      await getCounterValue(value, controller: _icontroller, beginInterval: beginInterval, endInterval: endInterval, callback: callback).then((x) => setAnimationDirection());

  ///get counter value
  @override
  Future<Animation<double>> getCounterValue(value, {AnimationController? controller, double? beginInterval, double? endInterval, void Function()? callback}) async {
    Animation<double> x = Tween<double>(begin: 0, end: (_counter += _rnd.nextInt(value) + 2)).animate(CurvedAnimation(parent: controller ?? _icontroller, curve: Interval(beginInterval ?? 0.0, endInterval ?? 1.0, curve: curve ?? Curves.fastOutSlowIn)))
      ..addListener(() {})
      ..addStatusListener((status) {});
    _icontroller.forward();

    return x;
  }

  disponseAnimationCtrl() => _icontroller.dispose();

  disponseAnimationCtrl2() => _icontroller2.dispose();

  disposeAnimationCtrl3() => _icontroller3.dispose();

  updateControllerDuration(int s) {
    _icontrollerDuration = Duration(seconds: s);
  }
}
