import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/feature/view2/data/data/datarepo.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/extensions/navigationextensions.dart';
import 'package:mpointe/feature/view2/presentation/widgets/widgets/cosyareaslist.dart';

class CosyAreaDialog extends StatelessWidget {
  const CosyAreaDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.maxHeight - 410.h,
        ),
        Row(
          children: [
            25.toSizeW,
            InkWell(
              onTap: () => context.pop,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: ColorHelper.white),
                height: 180.h,
                width: 140.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 12.h),
                  child: Column(
                    children: [
                      ...cosy.map((e) => CosyList(e: e)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
