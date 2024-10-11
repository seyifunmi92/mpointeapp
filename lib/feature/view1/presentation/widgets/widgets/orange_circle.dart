import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/fonts.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/orange_circle_args.dart';
// ignore_for_file: must_be_immutable

class BuyandRentContainer extends StatelessWidget {
  OrangeCircleArgs args;
  BuyandRentContainer({super.key, required this.args});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          13.toSizeH,
          IText(
            value: args.texttop!,
            fontColor: args.fontColor,
            fontFamily: IFonts.nunito,
            fontWeight: FontWeight.w800,
            fontSize: args.fontsizetexttop,
          ),
          20.toSizeH,
          IText(
            value: args.textmiddle!,
            fontColor: args.fontColor,
            fontFamily: IFonts.nunito,
            fontSize: args.fontsizetextmiddle,
            fontWeight: FontWeight.bold,
          ),
          IText(
            value: args.textbelow!,
            fontColor: args.fontColor,
            fontFamily: IFonts.nunito,
            fontSize: args.fontsizetextbelow,
          ),
        ],
      );
}
