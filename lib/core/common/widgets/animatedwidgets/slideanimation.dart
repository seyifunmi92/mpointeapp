import 'package:flutter/material.dart';
import 'package:mpointe/core/common/widgets/reuseables/image_handler/imagebulder.dart';
part '../widget_args/slideanimationDto.dart';

class SlideAnimationWidget extends StatelessWidget {
  final SlideAnimationArgs args;
  const SlideAnimationWidget({super.key, required this.args});

  @override
  Widget build(BuildContext context) => SlideTransition(
        position: args.offset!,
        child: args.child ?? ImageBuilder().getImage,
      );
}
