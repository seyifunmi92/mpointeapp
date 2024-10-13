import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/widgetextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/extensions/navigationextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/core/helpers/bLogic/operations/animationlogic.dart';
import 'package:mpointe/core/common/widgets/animatedwidgets/fadeanimation.dart';
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

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  @override
  void initState() {
    AnimationManager.control.initAnimation3(this);

    AnimationManager.logic.updateTurnsValuesMapScreen(() => setState(() {}));

    AnimationManager.logic.updateFadeMapScreen(() => setState(() {}));

    Logic.logicoperations.callFutureMethod(4, () => CosyAreaDialog().toDialog(context));

    Logic.logicoperations.callFutureMethod(6, () => context.pop);

    Logic.logicoperations.callFutureMethod(7, () {
      AnimationManager.control.disposeAnimationCtrl3();

      AnimationManager.control.initAnimation3(this);

      AnimationManager.logic.updateTurnsValuesMap2(() => setState(() {}));
    });

    super.initState();
  }

  @override
  void dispose() {
    // AnimationManager.control.disposeAnimationCtrl3();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AnimationLogic val = AnimationManager.logic;

    return Stack(
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
                FadeAnimationWidget(
                  args: FadeAnimationArgs(
                    fade: val.fadeTextField!,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FadeAnimationWidget(
                          args: FadeAnimationArgs(fade: val.fadeTextField!, child: ITextField()),
                        ),
                        FilterContainer(),
                      ],
                    ),
                  ),
                ),
                30.toSizeH,

                ///
                OrangeContainer(
                  sidewidth: 100,
                  height: 35.h,
                  width: val.orangeCircleTurns!.value,
                  iconsSize: 16.h,
                ),
                30.toSizeH,

                ///
                OrangeContainer(
                  sidewidth: 120,
                  height: 35.h,
                  width: val.orangeCircleTurns!.value,
                  iconsSize: 16.h,
                ),
                30.toSizeH,

                ///
                OrangeContainer(
                  sidewidth: 240,
                  height: 35.h,
                  width: val.orangeCircleTurns!.value,
                  iconsSize: 16.h,
                ),
                10.toSizeH,

                ///
                OrangeContainer(
                  sidewidth: 320,
                  height: 35.h,
                  width: val.orangeCircleTurns!.value,
                  iconsSize: 16.h,
                ),

                10.toSizeH,

                ///
                OrangeContainer(
                  sidewidth: 100,
                  height: 35.h,
                  width: val.orangeCircleTurns!.value,
                  iconsSize: 16.h,
                ),
                30.toSizeH,

                ///
                OrangeContainer(
                  sidewidth: 170,
                  height: 35.h,
                  width: val.orangeCircleTurns!.value,
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
}
