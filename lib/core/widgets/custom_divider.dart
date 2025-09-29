import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.gray100,
      thickness: 1,
      height: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
