import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final ValueNotifier<int> selectedIndexListenable;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndexListenable,
    required this.onItemTapped,
  });
  final List<String> icons = const [
    'assets/images/home.png',
    'assets/images/local.png',
    'assets/images/search.png',
    'assets/images/internet.png',
    'assets/images/setting.png',
  ];

  final List<String> labels = const [
    "Home",
    "Library",
    "Search",
    "Explore",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          return ValueListenableBuilder<int>(
            valueListenable: selectedIndexListenable,
            builder: (context, selectedIndex, child) {
              final isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () => onItemTapped(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.symmetric(
                    horizontal: isSelected ? 16 : 8,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primary : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        icons[index],
                        width: 24,
                        height: 24,
                        color: isSelected
                            ? Colors.white
                            : theme.iconTheme.color?.withValues(alpha: 0.6),
                      ),
                      if (isSelected) ...[
                        const SizedBox(width: 8),
                        Text(
                          labels[index],
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
