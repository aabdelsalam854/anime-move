import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get w => MediaQuery.sizeOf(this).width;
  double get h => MediaQuery.sizeOf(this).height;
  double get r => MediaQuery.sizeOf(this).width * 0.20;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
  double get toPadding => MediaQuery.of(this).viewPadding.top;
}
