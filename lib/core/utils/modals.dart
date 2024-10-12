import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mpointe/core/constants/colors.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';

class Modal {
  Modal._internal();

  static Modal instance = Modal._internal();

  ///show app dialog
  Future<T?> showAppDialog<T>(
    BuildContext context, {
    Key? key,
    bool dismissible = true,
    Widget? child,
  }) async {
    return await showGeneralDialog<T>(
      context: context,
      barrierDismissible: dismissible,
      barrierLabel: 'Alert Dialog',
      pageBuilder: (context, animation, secondaryAnimation) {
        return ScaleTransition(
          scale: animation,
          child: Dialog(
            insetPadding: const EdgeInsets.symmetric(vertical: 25),
            backgroundColor: Colors.transparent,
            child: child ?? Container(),
          ),
        );
      },
    );
  }

  ///show app dialog
  Future<T?> showCupertino<T>(
    BuildContext context, {
    Widget? child,
  }) async {
    return await showCupertinoModalPopup(context: context, barrierDismissible: true, useRootNavigator: true, builder: (context) => child ?? 1.toSizeH);
  }

  showSnackBar(BuildContext cxt, String value, {Animation<double>? animation}) => ScaffoldMessenger.of(cxt).showSnackBar(SnackBar(
        animation: animation,
        duration: const Duration(seconds: 1),
        backgroundColor: ColorHelper.whitecontainer2,
        content: IText(
          value: value,
          fontColor: ColorHelper.black,
        ),
      ));
}
