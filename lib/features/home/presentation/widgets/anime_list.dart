import 'package:clean_arch_task/features/home/presentation/widgets/anime_card.dart';
import 'package:flutter/material.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key});
  final anime = const [
    {
      "image": 'assets/images/card1.png',
      "title": "Detective Conan",
      "genre": "Mystery",
      "rating": 5.0,
    },
    {
      "image": 'assets/images/card2.png',
      "title": "Hunter x Hunter",
      "genre": "Adventure",
      "rating": 5.0,
    },
    {
      "image": 'assets/images/card3.png',
      "title": "One Piece",
      "genre": "Adventure",
      "rating": 5.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: anime.length,
        cacheExtent: 300,
        itemBuilder: (context, index) {
          final item = anime[index];
          return AnimeCard(
            image: item["image"] as String,
            title: item["title"] as String,
            genre: item["genre"] as String,
            rating: item["rating"] as double,
          );
        },
      ),
    );
  }
}
