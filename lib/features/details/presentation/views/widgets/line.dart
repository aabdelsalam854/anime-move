import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color:  AppColors.buttonSecondary,
    
      indent: 0,
      endIndent: 0, 
    );
  }
}
