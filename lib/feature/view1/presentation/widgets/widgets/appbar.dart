import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/appbarargs.dart';
// ignore_for_file: must_be_immutable

class IAppBar extends StatelessWidget {
  AppBarArgs args;

  IAppBar({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40.h,
          width: args.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorHelper.white,
          ),
          child: Pad(
            width: 8.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  args.icon,
                  size: args.iconSize,
                  color: ColorHelper.whitecontainer3,
                ),
                IText(
                  value: args.title!,
                  fontSize: args.fontSize,
                  fontColor: ColorHelper.whitecontainer3,
                ),
              ],
            ),
          ),
        ),
        args.widget!,
      ],
    );
  }
}
