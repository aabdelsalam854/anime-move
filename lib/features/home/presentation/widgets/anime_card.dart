import 'package:clean_arch_task/core/routing/app_routes.dart';
import 'package:clean_arch_task/features/home/presentation/widgets/anime_poster_section.dart';
import 'package:clean_arch_task/features/home/presentation/widgets/anime_text_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimeCard extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final double rating;

  const AnimeCard({
    super.key,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => context.push(AppRoutes.details),
          child: AnimePosterSection(image: image, rating: rating),
        ),
        const SizedBox(height: 8),
        AnimeTextSection(title: title, genre: genre),
      ],
    );
  }
}

// class AnimeGradientOverlay extends StatelessWidget {
//   const AnimeGradientOverlay({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Positioned(
//       left: 0,
//       right: 0,
//       bottom: 0,
//       child: SizedBox(
//         height: 60,
//         child: DecoratedBox(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [Colors.transparent, Color.fromRGBO(0, 0, 0, 0.7)],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
