import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/widgetextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/variants.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/mapwidget.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/textfield.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/cosyareasdialog.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/orangecontainer.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/filtercontainer.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/locations_avatar.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/positionbottomnav.dart';
// ignore_for_file: prefer_const_constructors

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
  //  Logic.logicoperations.callFutureMethod(1, () => CosyAreaDialog().toDialog(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ///return map
          const MapWidget(),

          ///
          Scaffold(
            backgroundColor: Colors.black87.withOpacity(.5),
            body: Pad(
              child: Column(
                children: [
                  60.toSizeH,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ITextField(),
                      FilterContainer(),
                    ],
                  ),
                  30.toSizeH,

                  ///
                  OrangeContainer(
                    sidewidth: 100,
                    height: 35.h,
                    width: 30.w,
                    iconsSize: 16.h,
                  ),
                  30.toSizeH,

                  ///
                  OrangeContainer(
                    sidewidth: 120,
                    height: 35.h,
                    width: 30.w,
                    iconsSize: 16.h,
                  ),
                  30.toSizeH,

                  ///
                  OrangeContainer(
                    sidewidth: 240,
                    height: 35.h,
                    width: 30.w,
                    iconsSize: 16.h,
                  ),
                  10.toSizeH,

                  ///
                  OrangeContainer(
                    sidewidth: 320,
                    height: 35.h,
                    width: 30.w,
                    iconsSize: 16.h,
                  ),

                  10.toSizeH,

                  ///
                  OrangeContainer(
                    sidewidth: 100,
                    height: 35.h,
                    width: 30.w,
                    iconsSize: 16.h,
                  ),
                  30.toSizeH,

                  ///
                  OrangeContainer(
                    sidewidth: 170,
                    height: 35.h,
                    width: 30.w,
                    iconsSize: 16.h,
                  ),

                  130.toSizeH,

                  ///
                  LocationAvatar(
                    icon: Icons.accessible,
                  ).toRow(),

                  ///

                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LocationAvatar(),
                      VariantsContainer(),
                    ],
                  )
                ],
              ),
            ),
            floatingActionButton: Column(
              children: [
                SizedBox(height: 730.h),
                PositionBottomNav(),
              ],
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          )
        ],
      );
}
