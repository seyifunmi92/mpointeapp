import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/widgetextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/swipe.dart';
import 'package:mpointe/core/common/widgets/reuseables/image_handler/imagebulder.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/swipeimageargs.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/bottom_nav_args.dart';
// ignore_for_file: must_be_immutable

class BottomNav extends StatelessWidget {
  BottomNavArgs args;
  BottomNav({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: args.height,
        width: args.width ?? context.maxWidth,
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
                      label: 'Gladlova St, 25',
                      fontSize: 15.fsize,
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
                          width: 145.w,
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
                        SwipeOnImage(args: SwipeImageArgs(height: 165, radius: 20, label: 'Sedova St., 22', fontSize: 10.fsize, width: 140.w))
                      ],
                    ),
                  ],
                ),
              ]),
            )));
  }
}
