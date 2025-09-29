import 'package:clean_arch_task/core/theming/app_styles.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;
  final int index;
  final ValueNotifier<int> selectedIndex;
  final ValueChanged<int>? onSelected;

  const CategoryItem({
    super.key,
    required this.category,
    required this.index,
    required this.selectedIndex,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndex,
      builder: (context, currentIndex, _) {
        final bool isSelected = index == currentIndex;
        return InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            selectedIndex.value = index;
            onSelected?.call(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: ShapeDecoration(
              color: isSelected ? AppColors.primary : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Text(
              category,
              style: AppTextStyles.ralewayRegular14.copyWith(
                color: isSelected ? AppColors.white : AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        );
      },
    );
  }
}
