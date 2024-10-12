import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';

class ITextField extends StatelessWidget {
  const ITextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40.h,
        width: 230.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search_sharp,
              color: ColorHelper.textColorLight,
              size: 25.h,
            ),
            border: InputBorder.none,
            label: IText(
              value: "Saint Petersburg",
              fontSize: 11.fsize,
              fontColor: ColorHelper.textColorLight,
            ),
          ),
        ),
      ),
    );
  }
}
