import 'package:clean_arch_task/core/utils/app_assets.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const DetailsHeader({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 193,
        height: 146,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Positioned.fill(
              child: CircleAvatar(backgroundColor: Colors.white),
            ),

            Positioned(
              right: -24,
              top: -3,
              child: Image.asset(
                AppImage.RedEclipse,
                width: 160,
                height: 160,
                fit: BoxFit.contain,
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'DEMON',
                    style: TextStyle(
                      fontFamily: 'NewRocker',
                      fontSize: 48,
                      color: AppColors.black,
                      height: 0.9,
                      fontWeight: FontWeight.w400,
                      shadows: const [
                        Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 6,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'SLAYER',
                    style: TextStyle(
                      fontFamily: 'NewRocker',
                      fontSize: 48,
                      color: AppColors.black,
                      height: 0.9,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
