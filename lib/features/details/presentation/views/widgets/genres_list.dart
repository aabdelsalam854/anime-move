import 'package:clean_arch_task/core/enum/button_type.dart';
import 'package:clean_arch_task/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GenresList extends StatelessWidget {
  const GenresList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onPressed: () {},
          text: 'Dark Fantasy',
          buttonType: ButtonType.outlined,
          // customFontSize: 11,
          fontSize: 11,
          width: 97,
          height: 35,
        ),
        const SizedBox(width: 12),
        CustomButton(
          onPressed: () {},
          text: 'Action',
          buttonType: ButtonType.outlined,
          fontSize: 13,
          width: 82.128,
          height: 35.374,
        ),
        const SizedBox(width: 12),
        CustomButton(
          onPressed: () {},
          text: 'Adventure',
          buttonType: ButtonType.outlined,
          width: 92,
          height: 35,
        ),
      ],
    );
  }
}
