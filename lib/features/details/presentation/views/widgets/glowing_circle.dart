
import 'dart:ui';

import 'package:flutter/material.dart';

class GlowingCircle extends StatelessWidget {
  const GlowingCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Color(0XFF4A284D).withValues(alpha: 0.6),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
