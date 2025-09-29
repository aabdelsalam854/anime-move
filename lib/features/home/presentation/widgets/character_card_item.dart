import 'package:clean_arch_task/core/theming/app_styles.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String image;
  final String name;
  final String anime;

  const CharacterCard({
    super.key,
    required this.image,
    required this.name,
    required this.anime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Avatar Image
        CircleAvatar(radius: 50, backgroundImage: AssetImage(image)),
        const SizedBox(height: 8),

        // Character Name
        Text(
          name,
          style: AppTextStyles.ralewaySemiBold16.copyWith(
            color: AppColors.cardTitle,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          anime,
          style: AppTextStyles.ralewayRegular14.copyWith(
            color: AppColors.characterAnime,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
