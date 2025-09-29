
import 'package:clean_arch_task/features/details/presentation/views/widgets/custom_row_Item.dart';
import 'package:flutter/material.dart';

class GenresSection extends StatelessWidget {
  const GenresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomRowItem(category: 'Dark Fantasy'),

          CustomRowItem(category: 'Action'),

          CustomRowItem(category: 'Adventure'),
        ],
      ),
    );
  }
}
