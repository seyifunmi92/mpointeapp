import 'package:flutter/material.dart';
import 'package:mpointe/core/common/widgets/reuseables/image_handler/imagebulder.dart';
part '../widget_args/fadeanimationDto.dart';

class FadeAnimationWidget extends StatelessWidget {
  final FadeAnimationArgs args;
  const FadeAnimationWidget({super.key, required this.args});

  @override
  Widget build(BuildContext context) => FadeTransition(
        opacity: args.fade,
        child: args.child ?? ImageBuilder().getImage,
      );
}
