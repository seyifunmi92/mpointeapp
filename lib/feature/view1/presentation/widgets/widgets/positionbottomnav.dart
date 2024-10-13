import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mpointe/core/route_handler/routes.dart';
import 'package:mpointe/core/route_handler/route_logic.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/navigationextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/feature/view1/data/local_data_source/mockdata.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/positionedbottomnavlist.dart';

class PositionBottomNav extends StatefulWidget {
  const PositionBottomNav({super.key});

  @override
  State<PositionBottomNav> createState() => _PositionBottomNavState();
}

class _PositionBottomNavState extends State<PositionBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(color: Colors.black.withOpacity(.88), borderRadius: BorderRadius.circular(60)),
      child: Pad(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...bottomNavItems.map(
              (x) => PostionedBottomNavList(
                x,
                callBack: () async {
                  await Logic.call.updateSelectedIndx(x.index!);
                  setState(() {});

                  context.pushReplacement(RouteManager.logic.getNamedRoute(x.navigator!));
                },
                radius: x.index == Logic.call.selectedIndex ? 30 : 20,
                color: x.index == Logic.call.selectedIndex ? Colors.orange : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
