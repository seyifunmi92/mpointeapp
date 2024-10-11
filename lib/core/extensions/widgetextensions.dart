import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

extension ImageExt on dynamic {
  Widget toCircleImage({double? radius, Color? color}) => CircleAvatar(
        backgroundImage: this,
        radius: radius ?? 20,
        backgroundColor: color ?? Colors.transparent,
      );

  Widget toCircleImageSvg({double? radius, Color? color}) => CircleAvatar(
        radius: radius ?? 20,
        backgroundColor: color ?? Colors.transparent,
        child: SvgPicture.asset(this),
      );

  Widget get toClipRect => ClipRect(
        child: this,
      );

  String get topng => "assets/images/png/$this.png";

  String get tojpg => "assets/images/jpg/$this.jpg";

  String get tosvg => "assets/images/svg/$this.svg";
}
