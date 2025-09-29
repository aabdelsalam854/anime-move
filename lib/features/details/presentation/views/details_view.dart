import 'package:clean_arch_task/core/routing/app_routes.dart';
import 'package:clean_arch_task/core/utils/app_assets.dart';
import 'package:clean_arch_task/core/widgets/custom_divider.dart';
import 'package:clean_arch_task/features/details/presentation/views/widgets/details_bottom_actions.dart';
import 'package:clean_arch_task/features/details/presentation/views/widgets/details_description.dart';
import 'package:clean_arch_task/features/details/presentation/views/widgets/details_header.dart';
import 'package:clean_arch_task/features/details/presentation/views/widgets/details_stats.dart';
import 'package:clean_arch_task/features/details/presentation/views/widgets/genres_section.dart';
import 'package:clean_arch_task/features/details/presentation/views/widgets/glowing_circle.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF2A2050),
                    Color(0xFF2B1F4E),
                    Color(0xFF2E2350),
                  ],
                ),
              ),
            ),
          ),

          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withValues(alpha: 0.3),
                            BlendMode.darken,
                          ),
                          child: Image.asset(
                            AppImage.DetailsBg,
                            height: height / 1.4,
                            width: width,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Positioned(
                          bottom: -50,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: DetailsHeader(
                              screenHeight: height,
                              screenWidth: width,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Container(
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: -20,
                              right: -80,
                              child: GlowingCircle(),
                            ),
                            Positioned(
                              bottom: -15,
                              left: -80,
                              child: GlowingCircle(),
                            ),
                            Column(
                              children: const [
                                SizedBox(height: 8),
                                GenresSection(),
                                SizedBox(height: 8),
                                DividerWidget(),
                                SizedBox(height: 12),
                                DetailsStats(),
                                SizedBox(height: 12),
                                DividerWidget(),
                                SizedBox(height: 12),
                                DetailsDescription(),
                                SizedBox(height: 120),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Bottom fixed actions
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: DetailsBottomActions(
              previewPressed: () {
                context.push(AppRoutes.upgrade);
              },
              watchPresser: () {
                context.push(AppRoutes.upgrade);
              },
            ),
          ),
        ],
      ),
    );
  }
}
