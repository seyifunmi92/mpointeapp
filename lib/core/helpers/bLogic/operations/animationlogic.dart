import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
// ignore_for_file: prefer_final_fields

class AnimationLogic {
  AnimationLogic._internal();
  static AnimationLogic instance = AnimationLogic._internal();

  Animation<double>? _stPtrsbugCard;

  Animation<double>? get stPtrsbugCard => _stPtrsbugCard;

  Animation<double>? _stPtrsbugText;

  Animation<double>? get stPtrsbugText => _stPtrsbugText;

  Animation<double>? _stPtrsbugTextFade;

  Animation<double>? get stPtrsbugTextFade => _stPtrsbugTextFade;

  Animation<double>? _stPtrsbugIcon;

  Animation<double>? get stPtrsbugIcon => _stPtrsbugIcon;

  Animation<double>? _avatarFade;

  Animation<double>? get avatarFade => _avatarFade;

  Animation<Offset>? _hitext;

  Animation<Offset>? get hitext => _hitext;

  Animation<Offset>? _perfectPlaceText;

  Animation<Offset>? get perfectPlaceText => _perfectPlaceText;

  Animation<Offset>? _bNavOffset2;

  Animation<Offset>? get bNavOffset2 => _bNavOffset2;

  Animation<double>? _bNavOffset;

  Animation<double>? get bNavOffset => _bNavOffset;

  Animation<double>? _perfectplacefade;

  Animation<double>? get perfectplacefade => _perfectplacefade;

  bool _showText = false;

  bool get showText => _showText;

  bool _showText2 = false;

  bool get showText2 => _showText2;

  Animation<double>? _buyContainerFade;

  Animation<double>? get buyContainerFade => _buyContainerFade;

  Animation<double>? _buyContainerTurns;

  Animation<double>? get buyContainerTurns => _buyContainerTurns;

  Animation<double>? _rentContainerTurns;

  Animation<double>? get rentContainerTurns => _rentContainerTurns;

  Animation<double>? _buyContainerTurnsTextMiddle;

  Animation<double>? get buyContainerTurnsTextMiddle => _buyContainerTurnsTextMiddle;

  Animation<double>? _buyContainerTurnsTextTop;

  Animation<double>? get buyContainerTurnsTextTop => _buyContainerTurnsTextTop;

  Animation<double>? _buyContainerTurnsTextBottom;

  Animation<double>? get buyContainerTurnsTextBottom => _buyContainerTurnsTextBottom;

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

  Animation<double>? _circle1Turn;

  Animation<double>? get circle1Turn => _circle1Turn;

  Animation<double>? _icon1Turn;

  Animation<double>? get icon1Turn => _icon1Turn;

  Animation<double>? _circle2Turn;

  Animation<double>? get circle2Turn => _circle2Turn;

  Animation<double>? _icon2Turn;

  Animation<double>? get icon2Turn => _icon2Turn;

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

  Animation<double>? _avatarTurns;

  Animation<double>? get avatarTurns => _avatarTurns;

  Animation<double>? _fademapcircle1;

  Animation<double>? get fademapcircle1 => _fademapcircle1;

  Animation<double>? _fademapcircle2;

  Animation<double>? get fademapcircle2 => _fademapcircle2;

  Animation<double>? _fadevariantcontainer;

  Animation<double>? get fadevariantcontainer => _fadevariantcontainer;

  ///update all turn animation
  updateTurnsAnimations(void Function()? callback) async {
    _stPtrsbugCard = await AnimationManager.animate.getTurnsValue(y: 130.w, listener: callback, begininterval: 0.0, endinterval: 0.08, curve: Curves.easeInOutCirc);
    _buyContainerTurns = await AnimationManager.animate.getTurnsValue(y: 100, listener: callback, begininterval: 0.28, endinterval: 0.5);
    _rentContainerTurns = await AnimationManager.animate.getTurnsValue(y: 170.h, listener: callback, begininterval: 0.28, endinterval: 0.5);
    _buyContainerTurnsTextMiddle = await AnimationManager.animate.getTurnsValue(y: 45.fsize, listener: callback, begininterval: 0.28, endinterval: 0.5);
    _buyContainerTurnsTextTop = await AnimationManager.animate.getTurnsValue(y: 12.fsize, listener: callback, begininterval: 0.28, endinterval: 0.5);
    _buyContainerTurnsTextBottom = await AnimationManager.animate.getTurnsValue(y: 11.fsize, listener: callback, begininterval: 0.28, endinterval: 0.5);
  }

  updateFadeAnimation() async {
    _stPtrsbugTextFade = await AnimationManager.animate.getFadeValue(
      beginInterval: 0.08,
      endinterval: 0.22,
    );
    _avatarFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.18, endinterval: 0.24, curve: Curves.easeInOutCubic);
    _buyContainerFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.4, endinterval: 0.6);
    _rentContainerFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.4, endinterval: 0.6);
    _perfectplacefade = await AnimationManager.animate.getFadeValue(beginInterval: 0.32, endinterval: 0.55,curve: Curves.easeInOutCirc);
  }

  updateOffsetAnimations(void Function()? callback) async {
    _hitext = await AnimationManager.animate.getOffsetValue(x: 0.0, y: -3.0, beginInterval: 0.24, endInterval: 0.3, callback: callback, curve: Curves.easeInOutCirc);
    // _perfectPlaceText = await AnimationManager.animate.getOffsetValue(x: 0.0, y: 3.0, beginInterval: 0.28, endInterval: 0.42, callback: callback);
  }

  updateCounterAnimation(void Function()? callback) async {
    _buyCount = await AnimationManager.animate.getCounterValue(2000, beginInterval: 0.45, endInterval: 0.8, callback: callback);
    _rentCount = await AnimationManager.animate.getCounterValue(2500, beginInterval: 0.45, endInterval: 0.8, callback: callback);
  }

  ///animation Logic for modal pop up
  initializeOffsetModal(void Function()? callback) async {
    _bNavOffset2 = await AnimationManager.animate.getOffsetValue(x: 0.0, y: 1.0, beginInterval: 0.24, endInterval: 0.52, callback: callback, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
  }

  initializeSwipeTurns(void Function()? callback) async {
    _swipe1 = await AnimationManager.animate.getTurnsValue(y: _mq.size.width, listener: callback, begininterval: 0.01, endinterval: 0.26, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
    _swipe2 = await AnimationManager.animate.getTurnsValue(y: 145.w, listener: callback, begininterval: 0.05, endinterval: 0.27, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
    _swipe3 = await AnimationManager.animate.getTurnsValue(y: 145.w, listener: callback, begininterval: 0.07, endinterval: 0.27, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
    _circle1Turn = await AnimationManager.animate.getTurnsValue(y: 26, listener: callback, begininterval: 0.01, endinterval: 0.28, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
    _icon1Turn = await AnimationManager.animate.getTurnsValue(y: 15.h, listener: callback, begininterval: 0.01, endinterval: 0.28, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
    _circle2Turn = await AnimationManager.animate.getTurnsValue(y: 20, listener: callback, begininterval: 0.01, endinterval: 0.28, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
    _icon2Turn = await AnimationManager.animate.getTurnsValue(y: 12.h, listener: callback, begininterval: 0.01, endinterval: 0.28, controller: AnimationManager.control.icontroller2, curve: Curves.easeInOutCirc);
  }

  initializeFadeAnimation(void Function()? callback) async {
    _gladovaFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.20, endinterval: 0.47, controller: AnimationManager.control.icontroller2);
    _circle1fade = await AnimationManager.animate.getFadeValue(beginInterval: 0.20, endinterval: 0.47, controller: AnimationManager.control.icontroller2);
    _trefolevaFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.2, endinterval: 0.47, controller: AnimationManager.control.icontroller2);
    _circle2fade = await AnimationManager.animate.getFadeValue(beginInterval: 0.20, endinterval: 0.47, controller: AnimationManager.control.icontroller2);
    _sedoveFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.20, endinterval: 0.47, controller: AnimationManager.control.icontroller2);
    _circle3fade = await AnimationManager.animate.getFadeValue(beginInterval: 0.20, endinterval: 0.47, controller: AnimationManager.control.icontroller2);
    _bNavOffset = await AnimationManager.animate.getFadeValue(beginInterval: 0.5, endinterval: 0.7, controller: AnimationManager.control.icontroller2);
  }

  ///animation logic for map screen
  updateFadeMapScreen(void Function()? callback) async {
    _fadeTextField = await AnimationManager.animate.getFadeValue(beginInterval: 0.0, endinterval: 0.1, controller: AnimationManager.control.icontroller3, curve: Curves.easeInOutCirc);
    _fademapcircle1 = await AnimationManager.animate.getFadeValue(beginInterval: 0.1, endinterval: 0.3, controller: AnimationManager.control.icontroller3, curve: Curves.easeInOutCirc);
    _fademapcircle2 = await AnimationManager.animate.getFadeValue(beginInterval: 0.1, endinterval: 0.3, controller: AnimationManager.control.icontroller3, curve: Curves.easeInOutCirc);
    _fadevariantcontainer = await AnimationManager.animate.getFadeValue(beginInterval: 0.1, endinterval: 0.3, controller: AnimationManager.control.icontroller3, curve: Curves.easeInOutCirc);
  }

  updateTurnsValuesMapScreen(void Function()? callback) async {
    _orangeCardTurns = await AnimationManager.animate.getTurnsValue(y: 50.w, listener: callback, begininterval: 0.4, endinterval: 0.5, controller: AnimationManager.control.icontroller3, curve: Curves.easeInOutCirc);
  }

  updateTurnsValuesMap2(void Function()? callback) async {
    _orangeCardTurns = await AnimationManager.animate.getTurnsValue(x: 50.w, y: 30.w, listener: callback, begininterval: 0.0, endinterval: 0.15, controller: AnimationManager.control.icontroller3, curve: Curves.easeInOutCirc);
  }

  showHiText(bool x) {
    _showText = x;
  }

  showPerfectPlaceText(bool x) {
    _showText2 = x;
  }
}
