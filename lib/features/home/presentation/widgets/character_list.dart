import 'package:clean_arch_task/features/home/presentation/widgets/character_card_item.dart';
import 'package:flutter/material.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    final characters = const [
      {
        "image": 'assets/images/person1.png',
        "name": "Gon Freecss",
        "anime": "Hunter x Hunter",
      },
      {
        "image": 'assets/images/person2.png',
        "name": "Naruto Uzumaki",
        "anime": "Naruto",
      },
      {
        "image": 'assets/images/person3.png',
        "name": "Luffy",
        "anime": "One Piece",
      },
      {
        "image": 'assets/images/person1.png',
        "name": "Gon Freecss",
        "anime": "Hunter x Hunter",
      },
    ];

    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          final item = characters[index];
          return CharacterCard(
            image: item["image"]!,
            name: item["name"]!,
            anime: item["anime"]!,
          );
        },
      ),
    );
  }
}
