import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomGradientContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final List<Color> colors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  final double? width;
  final double? height;

  const CustomGradientContainer({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.colors = const [AppColors.accent2, AppColors.white],
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors, begin: begin, end: end),
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
