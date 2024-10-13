import 'package:flutter/material.dart';

class SwipeImageArgs {
  final String? label;
  final double? width;
  final int? height;
  final double? fontSize;
  final double? radius;
  Animation<double>? fadeText;
  Animation<double>? fadeCircle;
  double? iconSize;

  SwipeImageArgs({this.label, this.width, this.height, this.fontSize, this.radius, this.fadeText, this.fadeCircle, this.iconSize});
}
