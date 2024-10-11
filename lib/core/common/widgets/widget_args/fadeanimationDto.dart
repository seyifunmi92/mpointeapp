// ignore_for_file: file_names
part of "../animatedwidgets/fadeanimation.dart";

class FadeAnimationArgs {
  late Animation<double> fade;
  Widget? child;
  FadeAnimationArgs({required this.fade, this.child});
}
