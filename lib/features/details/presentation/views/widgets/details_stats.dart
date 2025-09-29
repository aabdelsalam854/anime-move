import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsStats extends StatelessWidget {
  const DetailsStats({super.key});

  Widget _buildItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: AppColors.gray200, size: 20),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.textWhite,
            fontFamily: 'Raleway',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildItem(Icons.visibility, '1.5M views'),
          const SizedBox(width: 24),
          _buildItem(Icons.fireplace_outlined, '2K clap'),
          const SizedBox(width: 24),
          _buildItem(Icons.movie_creation_outlined, '4 Seasons'),
        ],
      ),
    );
  }
}
