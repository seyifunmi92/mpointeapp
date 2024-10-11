import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/common/widgets/reuseables/custometext/text.dart';
import 'package:mpointe/core/common/widgets/reuseables/image_handler/imagebulder.dart';

class MApp {
  ///register material app as factory singleton
  MApp._internal();
  static final MApp _materialApp = MApp._internal();
  factory MApp() => _materialApp;

  Widget get maapp => MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              IText(value: "value"),
              ImageBuilder(radius: 30, path: ImageHandler.img.headshot).getImage,
            ],
          ),
        ),
      );
}
