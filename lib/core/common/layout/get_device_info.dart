import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mpointe/core/enums/device_orientation.dart';

class DeviceInfo {
  MediaQueryData get mq => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);

  double? _height;

  double? get height => _height;

  double? _width;

  double? get width => _width;

  ///get device type
  DeviceType get getcurrentDeviceType {
    _height = mq.size.height;

    _width = mq.size.width;

    if (_height! > 700 && _width! > 1320) return DeviceType.WEB;

    if (_height! > 600 && (_width! > 430 && _width! < 1200)) return DeviceType.TAB;

    return DeviceType.PHONE;
  }

  ///get orientation
  DeviceOrientation get getDeviceOrientation => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single).orientation.name.toLowerCase().contains("scape") ? DeviceOrientation.LANDSCAPE : DeviceOrientation.PORTRAIT;
}
