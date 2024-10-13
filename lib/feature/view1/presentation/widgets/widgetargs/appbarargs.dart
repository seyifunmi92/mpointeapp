import 'package:flutter/material.dart';

class AppBarArgs {
  double? width;
  double? height;
  IconData? icon;
  String? title;
  double? iconSize;
  double? fontSize;
  Widget? widget;
  Animation<double>? fade;

  AppBarArgs({this.width, this.height, this.icon, this.title, this.iconSize, this.fontSize, this.widget, this.fade});
}
