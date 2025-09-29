import 'package:clean_arch_task/core/theming/app_styles.dart';
import 'package:clean_arch_task/core/utils/app_assets.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:clean_arch_task/features/home/presentation/widgets/Categories_list.dart';
import 'package:clean_arch_task/features/home/presentation/widgets/anime_list.dart';
import 'package:clean_arch_task/features/home/presentation/widgets/character_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(gradient: AppColors.linerGradient),
          ),

          // Star decoration
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(AppImage.Star1, width: 300, height: 350),
          ),

          // CustomScrollView with slivers
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 80),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Text(
                    'Where Anime Comes Alive',
                    style: AppTextStyles.ralewayBold24,
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),

                // Categories
                SliverToBoxAdapter(child: CategoriesList()),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),

                // Anime List
                const SliverToBoxAdapter(child: AnimeList()),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),

                // Top Characters
                SliverToBoxAdapter(
                  child: Text(
                    'Top Characters',
                    style: AppTextStyles.ralewayBold24,
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),

                // Character List
                const SliverToBoxAdapter(child: CharacterList()),
                const SliverToBoxAdapter(child: SizedBox(height: 28)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
