import 'package:flutter/widgets.dart';
import 'package:mpointe/core/constants/fonts.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/feature/view2/data/data/DTO.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';

// ignore: must_be_immutable
class CosyList extends StatelessWidget {
  CosyAreas e;
  CosyList({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            e.icon,
            size: 23.h,
            color: ColorHelper.black.withOpacity(.7),
          ),
          5.toSizeW,
          IText(
            value: e.label,
            fontFamily: IFonts.nunito,
            fontColor: ColorHelper.black.withOpacity(.7),
            fontSize: 9.fsize,
          ),
        ],
      ),
    );
  }
}
