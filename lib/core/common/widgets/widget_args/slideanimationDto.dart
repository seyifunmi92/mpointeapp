// ignore_for_file: file_names

part of '../animatedwidgets/slideanimation.dart';

class SlideAnimationArgs extends Model {
  Animation<Offset>? offset;
  Widget? child;

  SlideAnimationArgs({required this.offset, this.child});
}

abstract class Model {
  Model();
}
