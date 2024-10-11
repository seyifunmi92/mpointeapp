import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mpointe/core/enums/device_orientation.dart';

class DeviceInfo {
  MediaQueryData get mq => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);

  double get height => mq.size.height;

  double get width => mq.size.width;

  ///get device type
  DeviceType get getcurrentDeviceType {
    if (height > 700 && width > 1000) return DeviceType.WEB;

    if (height > 600 && (width > 430 && width < 1200)) return DeviceType.TAB;

    return DeviceType.PHONE;
  }

  ///get orientation
  DeviceOrientation get getDeviceOrientation => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single).orientation.name.toLowerCase().contains("scape") ? DeviceOrientation.LANDSCAPE : DeviceOrientation.PORTRAIT;
}
