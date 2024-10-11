import 'package:flutter/material.dart';
import 'package:mpointe/core/extensions/layoutextensions.dart';
import 'package:mpointe/core/extensions/contextextensions.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgets/appbar.dart';
import 'package:mpointe/core/common/widgets/reuseables/base/scaffoldgradient.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/appbarargs.dart';

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
            child: Column(
              children: [
                20.toSizeH,
                IAppBar(args: AppBarArgs()),
              ],
            ),
          ),
        ],
      );
}
