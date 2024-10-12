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

  ///update all turn animation
  updateTurnsAnimations(void Function()? callback) async {
    _stPtrsbugCard = await AnimationManager.animate.getTurnsValue(y: 130.w, listener: callback);

    _stPtrsbugText = await AnimationManager.animate.getTurnsValue(y: 10.fsize, listener: callback);

    _stPtrsbugIcon = await AnimationManager.animate.getTurnsValue(y: 16.fsize, listener: callback);
  }

  Future updateFadeAnimation() async => _avatarFade = await AnimationManager.animate.getFadeValue();
}
