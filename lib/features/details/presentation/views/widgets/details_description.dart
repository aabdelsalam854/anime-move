import 'package:clean_arch_task/core/utils/app_assets.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Image.asset(AppImage.AnimeFire, width: 29, height: 32),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
              style: const TextStyle(
                color: AppColors.textWhite,
                fontFamily: 'Raleway',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
