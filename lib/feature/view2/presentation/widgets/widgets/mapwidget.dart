import 'package:flutter/material.dart';
import 'package:mpointe/core/common/managers/appmanagers.dart';
import 'package:mpointe/core/common/widgets/reuseables/image_handler/imagebulder.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitHeight, image: ImageBuilder(path: ImageHandler.img.map).buildAssetImageCircle)));
  }
}
