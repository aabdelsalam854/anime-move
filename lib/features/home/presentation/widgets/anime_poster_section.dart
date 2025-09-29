import 'package:clean_arch_task/features/home/presentation/widgets/anime_rating_badge.dart';
import 'package:flutter/material.dart';

class AnimePosterSection extends StatelessWidget {
  final String image;
  final double rating;

  const AnimePosterSection({
    super.key,
    required this.image,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  0.42,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Image.asset(image, width: 180, height: 260, fit: BoxFit.cover),
            AnimeRatingBadge(rating: rating),
            // const AnimeGradientOverlay(),
          ],
        ),
      ),
    );
  }
}
