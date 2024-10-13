import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/widgetextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/core/helpers/bLogic/operations/animationlogic.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/swipe.dart';
import 'package:mpointe/core/common/widgets/animatedwidgets/fadeanimation.dart';
import 'package:mpointe/core/common/widgets/animatedwidgets/slideanimation.dart';
import 'package:mpointe/core/common/widgets/reuseables/image_handler/imagebulder.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/positionbottomnav.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/swipeimageargs.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/bottom_nav_args.dart';
// ignore_for_file: prefer_const_constructors

// ignore_for_file: must_be_immutable

class BottomNav extends StatefulWidget {
  BottomNavArgs args;
  BottomNav({super.key, required this.args});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  @override
  void initState() {
    AnimationManager.control.initAnimation2(this);

    AnimationManager.logic.initializeSwipeTurns(() => setState(() {}));

    AnimationManager.logic.initializeFadeAnimation(() => setState(() {}));

    super.initState();
  }

  @override
  void dispose() {
    AnimationManager.control.disponseAnimationCtrl2();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AnimationLogic val = AnimationManager.logic;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Container(
              height: widget.args.height,
              width: widget.args.width ?? context.maxWidth,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
              child: Pad(
                  padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w, bottom: 7.w),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      ///first image stack
                      Stack(
                        children: [
                          ImageBuilder(
                            path: ImageHandler.img.kitchen,
                            fit: BoxFit.contain,
                          ).getImage.toRoundImage(radius: 30, clipheight: 244.h, clipwidth: context.maxWidth),
                          SwipeOnImage(
                              args: SwipeImageArgs(
                            height: 180,
                            radius: 26,
                            width: val.swipe1?.value,
                            label: 'Gladlova St, 25',
                            fontSize: 15.fsize,
                            fadeText: val.gladovaFade,
                            fadeCircle: val.circle1fade,
                          ))
                        ],
                      ),

                      10.toSizeH,

                      ///
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              ImageBuilder(
                                path: ImageHandler.img.flower,
                                fit: BoxFit.fitWidth,
                                height: 280.h,
                              ).getImage.toRoundImage(radius: 30, clipheight: 450.h / 2, clipwidth: 185.w),
                              SwipeOnImage(
                                  args: SwipeImageArgs(
                                height: 165,
                                radius: 20,
                                label: 'Trefoleva St., 43',
                                fontSize: 10.fsize,
                                width: val.swipe2?.value,
                                fadeText: val.trefolevaFade,
                                fadeCircle: val.circle2fade,
                              ))
                            ],
                          ),

                          ///
                          Stack(
                            children: [
                              ImageBuilder(
                                path: ImageHandler.img.greenroom,
                                fit: BoxFit.fitHeight,
                                height: 150.h,
                              ).getImage.toRoundImage(
                                    radius: 30,
                                    clipheight: 450.h / 2,
                                    clipwidth: 185.w,
                                  ),

                              ///
                              SwipeOnImage(args: SwipeImageArgs(height: 165, radius: 20, label: 'Sedova St., 22', fontSize: 10.fsize, width: val.swipe3?.value, fadeText: val.sedovaFade, fadeCircle: val.circle3fade))
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ))),
        ),
        FadeAnimationWidget(
          args: FadeAnimationArgs(
            fade: val.bNavOffset!,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              floatingActionButton: Column(
                children: [
                  SizedBox(height: 730.h),
                  PositionBottomNav(),
                ],
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            ),
          ),
        )
      ],
    );
  }
}
