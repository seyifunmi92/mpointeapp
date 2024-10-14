import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/fonts.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/enums/device_orientation.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/widgetextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';
import 'package:mpointe/core/common/widgets/animatedwidgets/fadeanimation.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/appbar.dart';
import 'package:mpointe/core/common/widgets/animatedwidgets/slideanimation.dart';
import 'package:mpointe/core/common/widgets/reuseables/base/scaffoldgradient.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/bottom_nav.dart';
import 'package:mpointe/core/common/widgets/reuseables/image_handler/imagebulder.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/appbarargs.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/orange_circle.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/bottom_nav_args.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/orange_circle_args.dart';

// ignore_for_file: prefer_const_constructors

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  ///lets initialize our animation controller
  @override
  void initState() {
    AnimationManager.animate.initAnimation(
      this,
    );
    AnimationManager.logic.updateTurnsAnimations(() => setState(() {}));
    AnimationManager.logic.updateFadeAnimation().then((x) => setState(() {}));
    AnimationManager.logic.updateOffsetAnimations(() => setState(() {
          AnimationManager.logic.showHiText(AnimationManager.logic.hitext!.value.dy.toInt() == 0.0 ? true : false);
       //   AnimationManager.logic.showPerfectPlaceText(AnimationManager.logic.perfectPlaceText!.value.dy.toInt() == 0.0 ? true : false);
        }));
    AnimationManager.logic.updateCounterAnimation(() => setState(() {}));
    Logic.logicoperations.callFutureMethod(7, () => ShowModals.modals.showCupertino(context, child: BottomNav(args: BottomNavArgs(height: 505.h))));
    super.initState();
  }

  @override
  void dispose() {
    AnimationManager.control.disponseAnimationCtrl();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

  log(dev_type.toString());
    var val = AnimationManager.logic;
    return Stack(
      children: [
        ///first widget in stack
        AppBody(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              60.toSizeH,

              ///appbar
              IAppBar(
                  args: AppBarArgs(
                height: 13.h,
                width: val.stPtrsbugCard!.value,
                title: "Saint Petersburg",
                icon: Icons.location_on,
                fontSize: 10.fsize,
                iconSize: 16.h,
                fade: val.stPtrsbugTextFade,
                widget: FadeAnimationWidget(args: FadeAnimationArgs(fade: val.avatarFade!, child: ImageBuilder(radius: 25, path: ImageHandler.img.headshot).getImage)),
              )),

              50.toSizeH,

              ///bodyText
              val.showText == false
                  ? 0.toSizeH
                  : SlideAnimationWidget(
                      args: SlideAnimationArgs(
                        offset: val.hitext,
                        child: IText(
                          value: "Hi, Oluwaseyi",
                          fontSize: 23.fsize,
                          fontColor: ColorHelper.whitecontainer3,
                        ),
                      ),
                    ),

              5.toSizeH,

              // val.showText2 == false
              //     ? 0.toSizeH
              //     : SlideAnimationWidget(
              //         args: SlideAnimationArgs(
              //           offset: val.perfectPlaceText,
              //           child: IText(
              //             value: "let's select your\nperfect place",
              //             fontSize: 37.fsize,
              //             fontColor: ColorHelper.black,
              //             fontFamily: IFonts.nunito,
              //             align: TextAlign.start,
              //           ),
              //         ),
              //       ),

              FadeAnimationWidget(
                args: FadeAnimationArgs(
                  fade: val.perfectplacefade!,
                  child: IText(
                    value: "let's select your\nperfect place",
                    fontSize: 37.fsize,
                    fontColor: ColorHelper.black,
                    fontFamily: IFonts.nunito,
                    align: TextAlign.start,
                  ),
                ),
              ),

              20.toSizeH,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ///BUY OFFERS
                  FadeAnimationWidget(
                    args: FadeAnimationArgs(fade: val.buyContainerFade!, child: BuyandRentContainer(args: OrangeCircleArgs(texttop: "BUY", textmiddle: val.buyCount?.value.toStringAsFixed(0), textbelow: "offers", fontsizetexttop: val.buyContainerTurnsTextTop?.value, fontsizetextmiddle: val.buyContainerTurnsTextMiddle?.value, fontsizetextbelow: val.buyContainerTurnsTextBottom?.value, fontColor: ColorHelper.white)).toCircle(radius: val.buyContainerTurns!.value, color: Colors.orange)),
                  ),

                  FadeAnimationWidget(args: FadeAnimationArgs(fade: val.rentContainerFade!, child: BuyandRentContainer(args: OrangeCircleArgs(texttop: "RENT", textmiddle: val.rentCount!.value.toStringAsFixed(0), textbelow: "offers", fontsizetexttop: val.buyContainerTurnsTextTop?.value, fontsizetextmiddle: val.buyContainerTurnsTextMiddle?.value, fontsizetextbelow: val.buyContainerTurnsTextBottom?.value, fontColor: Colors.brown.withOpacity(.5))).toContainer(height: val.rentContainerTurns?.value, width: 170.w, radius: 20, color: ColorHelper.white.withOpacity(.5))))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
