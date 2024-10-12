import 'package:flutter/material.dart';
import 'package:mpointe/core/constants/colors.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: Center(
        child: Icon(
          Icons.filter_alt,
          size: 30,
          color: ColorHelper.textColorLight,
        ),
      ),
    );
  }
}
