import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/fonts.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/padding/pad.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';
import 'package:mpointe/core/common/widgets/animatedwidgets/fadeanimation.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/swipeimageargs.dart';
// ignore_for_file: must_be_immutable

class SwipeOnImage extends StatelessWidget {
  SwipeImageArgs args;
  SwipeOnImage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Pad(
      child: Column(
        children: [
          args.height!.toSizeH,
          Container(
            width: args.width ?? context.maxWidth,
            height: 45.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60), color: Colors.white.withOpacity(.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                20.toSizeW,
                FadeAnimationWidget(
                  args: FadeAnimationArgs(
                    fade: args.fadeText!,
                    child: IText(
                      value: args.label ?? "",
                      fontFamily: IFonts.nunito,
                      fontSize: args.fontSize,
                      fontWeight: FontWeight.w600,
                      fontColor: ColorHelper.black,
                    ),
                  ),
                ),
                FadeAnimationWidget(
                  args: FadeAnimationArgs(
                    fade: args.fadeCircle!,
                    child: CircleAvatar(
                      radius: args.radius,
                      backgroundColor: ColorHelper.white.withOpacity(.7),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: ColorHelper.black.withOpacity(.5),
                        size: 15.h,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
