import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';

// ignore_for_file: must_be_immutable

class VariantsContainer extends StatelessWidget {
  IconData? icon;
  String? label;
  VariantsContainer({super.key, this.icon = Icons.menu_sharp, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white.withOpacity(.3),
      ),
      child: Pad(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: ColorHelper.white,
              size: 20.h,
            ),
            IText(
              value: "List of variants",
              fontColor: ColorHelper.white,
              fontSize: 11.fsize,
            ),
          ],
        ),
      ),
    );
  }
}
