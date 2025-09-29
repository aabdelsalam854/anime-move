
import 'package:clean_arch_task/core/theming/app_styles.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AnimeTextSection extends StatelessWidget {
  final String title;
  final String genre;
  const AnimeTextSection({super.key, required this.title, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.ralewayRegular14.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.cardTitle,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          genre,
          textAlign: TextAlign.center,
          style: AppTextStyles.ralewayMedium12.copyWith(
            color: AppColors.cardGenre,
            shadows: const [
              Shadow(
                offset: Offset(0, 2),
                blurRadius: 6,
                color: AppColors.cardGenre,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
