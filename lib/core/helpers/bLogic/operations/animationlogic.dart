import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/orange_circle_args.dart';
// ignore_for_file: prefer_final_fields

class AnimationLogic {
  AnimationLogic._internal();
  static AnimationLogic instance = AnimationLogic._internal();

  Animation<double>? _stPtrsbugCard;

  Animation<double>? get stPtrsbugCard => _stPtrsbugCard;

  Animation<double>? _stPtrsbugText;

  Animation<double>? get stPtrsbugText => _stPtrsbugText;

  Animation<double>? _stPtrsbugIcon;

  Animation<double>? get stPtrsbugIcon => _stPtrsbugIcon;

  Animation<double>? _avatarFade;

  Animation<double>? get avatarFade => _avatarFade;

  Animation<Offset>? _hitext;

  Animation<Offset>? get hitext => _hitext;

  Animation<Offset>? _perfectPlaceText;

  Animation<Offset>? get perfectPlaceText => _perfectPlaceText;

  Animation<double>? _bNavOffset;

  Animation<double>? get bNavOffset => _bNavOffset;

  bool _showText = false;

  bool get showText => _showText;

  bool _showText2 = false;

  bool get showText2 => _showText2;

  Animation<double>? _buyContainerFade;

  Animation<double>? get buyContainerFade => _buyContainerFade;

  Animation<double>? _rentContainerFade;

  Animation<double>? get rentContainerFade => _rentContainerFade;

  Animation<double>? _buyCount;

  Animation<double>? get buyCount => _buyCount;

  Animation<double>? _rentCount;

  Animation<double>? get rentCount => _rentCount;

  Animation<double>? _swipe1;

  Animation<double>? get swipe1 => _swipe1;

  MediaQueryData _mq = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);

  MediaQueryData get mq => _mq;

  Animation<double>? _gladovaFade;

  Animation<double>? get gladovaFade => _gladovaFade;

  Animation<double>? _circle1fade;

  Animation<double>? get circle1fade => _circle1fade;

  Animation<double>? _swipe2;

  Animation<double>? get swipe2 => _swipe2;

  Animation<double>? _trefolevaFade;

  Animation<double>? get trefolevaFade => _trefolevaFade;

  Animation<double>? _circle2fade;

  Animation<double>? get circle2fade => _circle2fade;

  Animation<double>? _swipe3;

  Animation<double>? get swipe3 => _swipe3;

  Animation<double>? _sedoveFade;

  Animation<double>? get sedovaFade => _sedoveFade;

  Animation<double>? _circle3fade;

  Animation<double>? get circle3fade => _circle3fade;

  Animation<double>? _fadeTextField;

  Animation<double>? get fadeTextField => _fadeTextField;

  Animation<double>? _orangeCardTurns;

  Animation<double>? get orangeCircleTurns => _orangeCardTurns;

  ///update all turn animation
  updateTurnsAnimations(void Function()? callback) async {
    _stPtrsbugCard = await AnimationManager.animate.getTurnsValue(y: 130.w, listener: callback, begininterval: 0.0, endinterval: 0.05);
    _stPtrsbugText = await AnimationManager.animate.getTurnsValue(y: 10.fsize, listener: callback, begininterval: 0.06, endinterval: 0.11);
    _stPtrsbugIcon = await AnimationManager.animate.getTurnsValue(y: 16.fsize, listener: callback, begininterval: 0.12, endinterval: 0.17);
  }

  updateFadeAnimation() async {
    _avatarFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.18, endinterval: 0.27);
    _buyContainerFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.49, endinterval: 0.7);
    _rentContainerFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.49, endinterval: 0.7);
  }

  updateOffsetAnimations(void Function()? callback) async {
    _hitext = await AnimationManager.animate.getOffsetValue(x: 0.0, y: 3.0, beginInterval: 0.27, endInterval: 0.38, callback: callback);
    _perfectPlaceText = await AnimationManager.animate.getOffsetValue(x: 0.0, y: 3.0, beginInterval: 0.38, endInterval: 0.48, callback: callback);
  }

  updateCounterAnimation(void Function()? callback) async {
    _buyCount = await AnimationManager.animate.getCounterValue(2000, beginInterval: 0.5, endInterval: 0.7, callback: callback);
    _rentCount = await AnimationManager.animate.getCounterValue(2500, beginInterval: 0.5, endInterval: 0.7, callback: callback);
  }

  ///animation Logic for modal pop up
  initializeSwipeTurns(void Function()? callback) async {
    _swipe1 = await AnimationManager.animate.getTurnsValue(y: _mq.size.width, listener: callback, begininterval: 0.01, endinterval: 0.15, controller: AnimationManager.control.icontroller2);
    _swipe2 = await AnimationManager.animate.getTurnsValue(y: 145.w, listener: callback, begininterval: 0.36, endinterval: 0.42, controller: AnimationManager.control.icontroller2);
    _swipe3 = await AnimationManager.animate.getTurnsValue(y: 145.w, listener: callback, begininterval: 0.62, endinterval: 0.68, controller: AnimationManager.control.icontroller2);
  }

  initializeFadeAnimation(void Function()? callback) async {
    _gladovaFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.15, endinterval: 0.26, controller: AnimationManager.control.icontroller2);
    _circle1fade = await AnimationManager.animate.getFadeValue(beginInterval: 0.26, endinterval: 0.36, controller: AnimationManager.control.icontroller2);
    _trefolevaFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.42, endinterval: 0.52, controller: AnimationManager.control.icontroller2);
    _circle2fade = await AnimationManager.animate.getFadeValue(beginInterval: 0.52, endinterval: 0.62, controller: AnimationManager.control.icontroller2);
    _sedoveFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.68, endinterval: 0.78, controller: AnimationManager.control.icontroller2);
    _circle3fade = await AnimationManager.animate.getFadeValue(beginInterval: 0.78, endinterval: 0.88, controller: AnimationManager.control.icontroller2);
    _bNavOffset = await AnimationManager.animate.getFadeValue(beginInterval: 0.88, endinterval: 1.0, controller: AnimationManager.control.icontroller2);
  }

  ///animation logic for map screen
  updateFadeMapScreen(void Function()? callback) async {
    _fadeTextField = await AnimationManager.animate.getFadeValue(beginInterval: 0.35, endinterval: 0.4, controller: AnimationManager.control.icontroller3);
  }

  updateTurnsValuesMapScreen(void Function()? callback) async {
    _orangeCardTurns = await AnimationManager.animate.getTurnsValue(y: 50.w, listener: callback, begininterval: 0.1, endinterval: 0.3, controller: AnimationManager.control.icontroller3);
  }

  updateTurnsValuesMap2(void Function()? callback) async {
    _orangeCardTurns = await AnimationManager.animate.getTurnsValue(x: 50.w, y: 30.w, listener: callback, begininterval: 0.1, endinterval: 0.2, controller: AnimationManager.control.icontroller3);
  }

  showHiText(bool x) {
    _showText = x;
  }

  showPerfectPlaceText(bool x) {
    _showText2 = x;
  }
}
