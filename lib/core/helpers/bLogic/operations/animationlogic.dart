import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';

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

  Animation<Offset>? _bNavOffset;

  Animation<Offset>? get bNavOffset => _bNavOffset;

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

  ///update all turn animation
  updateTurnsAnimations(void Function()? callback) async {
    _stPtrsbugCard = await AnimationManager.animate.getTurnsValue(y: 130.w, listener: callback, begininterval: 0.0, endinterval: 0.05);
    _stPtrsbugText = await AnimationManager.animate.getTurnsValue(y: 10.fsize, listener: callback, begininterval: 0.06, endinterval: 0.1);
    _stPtrsbugIcon = await AnimationManager.animate.getTurnsValue(y: 16.fsize, listener: callback, begininterval: 0.1, endinterval: 0.15);
  }

  updateFadeAnimation() async {
    _avatarFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.17, endinterval: 0.22);
    _buyContainerFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.45, endinterval: 0.75);
    _rentContainerFade = await AnimationManager.animate.getFadeValue(beginInterval: 0.6, endinterval: 0.7);
  }

  updateOffsetAnimations(void Function()? callback) async {
    _hitext = await AnimationManager.animate.getOffsetValue(x: 0.0, y: 3.0, beginInterval: 0.25, endInterval: 0.35, callback: callback);
    _perfectPlaceText = await AnimationManager.animate.getOffsetValue(x: 0.0, y: 3.0, beginInterval: 0.35, endInterval: 0.4, callback: callback);
    _bNavOffset = await AnimationManager.animate.getOffsetValue(x: 0.0, y: 10.0, beginInterval: 0.9, endInterval: 0.1, callback: callback);
  }

  updateCounterAnimation(void Function()? callback) async {
    _buyCount = await AnimationManager.animate.getCounterValue(2000, beginInterval: 0.48, endInterval: 0.9, callback: callback);
    _rentCount = await AnimationManager.animate.getCounterValue(2500, beginInterval: 0.48, endInterval: 0.9, callback: callback);
  }

  showHiText(bool x) {
    _showText = x;
  }

  showPerfectPlaceText(bool x) {
    _showText2 = x;
  }
}
