import 'package:flutter/material.dart';
import 'package:mpointe/core/enums/device_orientation.dart';
// ignore_for_file: non_constant_identifier_names


extension Sizer on int {
  MediaQueryData get mq => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);

  num get REF_HEIGHT => dev_type == DeviceType.WEB ? 1200 : 750;

  num get REF_WIDTH => dev_type == DeviceType.WEB ? 1920 : 400;

  num get PADDING_TOP => mq.padding.top;

  num get STATUS_BAR => mq.padding.bottom;

  num get DEVICE_HEIGHT => mq.size.height - PADDING_TOP - STATUS_BAR;

  num get DEVICE_WIDTH => mq.size.width;

  double get h => DEVICE_HEIGHT / (REF_HEIGHT / this);

  double get w => DEVICE_WIDTH / (REF_WIDTH / this);

  double get fsize => dev_type == DeviceType.WEB ? w : h;
}
