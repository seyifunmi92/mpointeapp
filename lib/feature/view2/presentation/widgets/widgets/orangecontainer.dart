import 'package:flutter/material.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
// ignore_for_file: must_be_immutable

class OrangeContainer extends StatelessWidget {
  double height;
  double width;
  double iconsSize;
  int sidewidth;

  OrangeContainer({super.key, required this.height, required this.width, required this.iconsSize, required this.sidewidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sidewidth.toSizeW,
        Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
          child: Center(
            child: Icon(
              Icons.location_city,
              color: Colors.white,
              size: iconsSize,
            ),
          ),
        ),
      ],
    );
  }
}
