import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
// ignore_for_file: must_be_immutable

class AppBody extends StatelessWidget {
  Widget? child;
  Widget? bottomNav;
  AppBody({super.key, this.child, this.bottomNav});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
          ColorHelper.backgroundLight1,
          ColorHelper.backgroundLight2.withOpacity(.8),
        ])),
        height: context.maxHeight,
        width: context.maxWidth,
        child: Pad(
          child: child ?? Container(),
        ),
      ),
      bottomNavigationBar: bottomNav,
    );
  }
}
