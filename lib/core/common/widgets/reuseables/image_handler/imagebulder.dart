import 'dart:io';
import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/widgetextensions.dart';
// ignore_for_file: curly_braces_in_flow_control_structures

class ImageBuilder {
  String? path;
  String? url;
  File? file;
  String? svg;
  double? height;
  BoxFit? fit;
  Color? color;
  double? radius;
  Uint8List? bytes;

  ImageBuilder({this.path, this.url, this.file, this.svg, this.height, this.fit = BoxFit.contain, this.color, this.radius, this.bytes});

  Widget get buildAssetImage => Image.asset(
        path ?? "",
        height: height ?? 10,
        fit: fit,
        color: color,
      );

  Widget get buildNtwkmage => Image.network(
        url ?? "",
        height: height ?? 10,
        fit: fit,
        color: color,
      );

  Widget get buildFileImage => Image.file(
        file!,
        height: height ?? 10,
        fit: fit,
        color: color,
      );

  Widget get buildBytesImage => Image.memory(
        bytes!,
        height: height ?? 10,
        fit: fit,
        color: color,
      );

  NetworkImage get buildNetworkimageCircle => NetworkImage(url!);

  AssetImage get buildAssetImageCircle => AssetImage(path!);

  MemoryImage get memoryImageCircle => MemoryImage(bytes!);

  FileImage get fileImageCircle => FileImage(file!);

  Widget get buildSvgImage => SvgPicture.asset(svg ?? ImageHandler.img.placeHolder1, fit: fit!);

  Widget get getImage {
    if (path != null) return radius != null ? buildAssetImageCircle.toCircleImage(radius: radius, color: color) : buildAssetImage.toClipRect;

    if (url != null) return radius != null ? buildNetworkimageCircle.toCircleImage(radius: radius, color: color) : buildNtwkmage.toClipRect;

    if (file != null) return radius != null ? fileImageCircle.toCircleImage(radius: radius, color: color) : buildFileImage.toClipRect;

    if (bytes != null) return radius != null ? memoryImageCircle.toCircleImage(radius: radius, color: color) : buildBytesImage.toClipRect;

    if (svg != null) return radius != null ? svg.toCircleImageSvg(radius: radius, color: color) : buildSvgImage.toClipRect;

    return buildSvgImage.toClipRect;
  }
}
