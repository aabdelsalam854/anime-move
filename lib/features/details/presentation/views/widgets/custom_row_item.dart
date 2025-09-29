import 'package:clean_arch_task/core/theming/app_styles.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRowItem extends StatelessWidget {
  const CustomRowItem({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9).withOpacity(0.24), // لون الخلفية
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25), // ظل أسود بنسبة 25%
            offset: const Offset(10, 0), // X=10 , Y=0
            blurRadius: 4, // البلور
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(16), // اختياري لو عندك زوايا مدورة
      ),
      child: Text(
        category,
        style: AppTextStyles.ralewayRegular14.copyWith(color: AppColors.white),
      ),
    );
  }
}
