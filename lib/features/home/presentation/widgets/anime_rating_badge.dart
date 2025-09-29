import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AnimeRatingBadge extends StatelessWidget {
  final double rating;
  const AnimeRatingBadge({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(Icons.star, size: 14, color: AppColors.primary),
            const SizedBox(width: 2),
            Text(
              rating.toStringAsFixed(1),
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}