import 'package:flutter/material.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/bottomnavitems.dart';
// ignore_for_file: must_be_immutable

class PostionedBottomNavList extends StatelessWidget {
  BottomNavItems items;
  double? radius;
  Color? color;
  PostionedBottomNavList(this.items, {super.key, this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 22,
      backgroundColor: color ?? Colors.black,
      child: Center(
        child: Icon(
          items.icon,
          size: 20.h,
          color: Colors.white.withOpacity(.8),
        ),
      ),
    );
  }
}
