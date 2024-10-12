import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/colors.dart';
// ignore_for_file: must_be_immutable


class LocationAvatar extends StatelessWidget {
  IconData? icon;
  LocationAvatar({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white.withOpacity(.3),
      radius: 30,
      child: Center(
        child: Icon(
          icon ?? Icons.location_on,
          color: ColorHelper.white,
        ),
      ),
    );
  }
}
