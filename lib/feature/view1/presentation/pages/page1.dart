import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/fonts.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/widgetextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/appbar.dart';
import 'package:mpointe/core/common/widgets/reuseables/base/scaffoldgradient.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/bottom_nav.dart';
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

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ///first widget in stack
          AppBody(
            bottomNav: BottomNav(
              args: BottomNavArgs(height: 520.h),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                60.toSizeH,

                ///appbar
                IAppBar(args: AppBarArgs(height: 13.h, width: 130.w, title: "Saint Petersburg", icon: Icons.location_on, fontSize: 10.fsize, iconSize: 16.h)),

                50.toSizeH,

                ///bodyText
                IText(
                  value: "Hi, Oluwaseyi",
                  fontSize: 23.fsize,
                  fontColor: ColorHelper.whitecontainer3,
                ),

                5.toSizeH,

                IText(
                  value: "let's select your\nperfect place",
                  fontSize: 37.fsize,
                  fontColor: ColorHelper.black,
                  fontFamily: IFonts.nunito,
                  align: TextAlign.start,
                ),

                20.toSizeH,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///BUY OFFERS
                    BuyandRentContainer(args: OrangeCircleArgs(texttop: "BUY", textmiddle: "1 034", textbelow: "offers", fontsizetexttop: 12.fsize, fontsizetextmiddle: 45.fsize, fontsizetextbelow: 11.fsize, fontColor: ColorHelper.white)).toCircle(radius: 100, color: Colors.orange),

                    ///RENT OFFERS
                    BuyandRentContainer(args: OrangeCircleArgs(texttop: "RENT", textmiddle: "2 212", textbelow: "offers", fontsizetexttop: 12.fsize, fontsizetextmiddle: 45.fsize, fontsizetextbelow: 11.fsize, fontColor: Colors.brown.withOpacity(.5))).toContainer(height: 170.h, width: 170.w, radius: 20, color: ColorHelper.white.withOpacity(.5))
                  ],
                )
              ],
            ),
          ),
        ],
      );
}
