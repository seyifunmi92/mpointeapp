import 'package:flutter/material.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';

extension ContextExt on BuildContext {
  double get maxHeight => MediaQuery.of(this).size.height;

  double get maxWidth => MediaQuery.of(this).size.width;
}

extension Sizer on int {

  Widget get toSizeH => SizedBox(height: h);

  Widget get toSizeW => SizedBox(
        width: w,
      );
}
