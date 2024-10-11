import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';

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

  Widget toCircle({double? radius, Color? color}) => CircleAvatar(
        child: this,
        backgroundColor: color ?? Colors.white,
        radius: radius ?? 30,
      );

  Widget toContainer({double? radius, double? height, double? width, Color? color}) => Container(
        height: height ?? 50.h,
        width: width ?? 50.w,
        child: this,
        decoration: BoxDecoration(color: color ?? Colors.white, borderRadius: BorderRadius.circular(radius ?? 0)),
      );

  Widget get toClipRect => ClipRect(
        child: this,
      );

  Widget toRoundImage({double? radius, double? clipheight, double? clipwidth}) => ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 0),
        child: SizedBox(
          width: clipwidth ?? 50.w,
          height: clipheight ?? 100.h,
          child: this,
        ),
      );

  String get topng => "assets/images/png/$this.png";

  String get tojpg => "assets/images/jpg/$this.jpg";

  String get tosvg => "assets/images/svg/$this.svg";
}
