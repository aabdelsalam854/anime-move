import 'package:clean_arch_task/core/enum/button_type.dart';
import 'package:clean_arch_task/core/theming/app_styles.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:clean_arch_task/core/widgets/custom_button.dart';
import 'package:clean_arch_task/core/widgets/custom_gradient_container.dart';
import 'package:clean_arch_task/features/upgrade_plan/presentation/views/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpgradePlanView extends StatefulWidget {
  const UpgradePlanView({super.key});

  @override
  State<UpgradePlanView> createState() => _UpgradePlanViewState();
}

class _UpgradePlanViewState extends State<UpgradePlanView> {
  final ValueNotifier<String> selectedPlan = ValueNotifier<String>("Monthly");

  @override
  void dispose() {
    selectedPlan.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          CustomGradientContainer(
            height: size.height,
            width: size.width,
            colors: [AppColors.accent2, AppColors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: size.height,
                  child: Stack(
                    children: [
                      CustomGradientContainer(
                        height: size.height,
                        width: size.width,
                        colors: [AppColors.accent2, AppColors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),

                      Positioned(
                        top: -63,
                        left: -120,
                        child: SvgPicture.asset(
                          'assets/images/star2.svg',
                          width: 388,
                          height: 350,
                        ),
                      ),
                      Positioned(
                        top: 200,
                        right: -150,
                        child: SvgPicture.asset(
                          'assets/images/star3.svg',
                          width: 289,
                          height: 289,
                        ),
                      ),

                      Positioned(
                        left: 0,
                        right: 0,
                        top: 25,
                        child: Column(
                          children: [
                            const SizedBox(height: 67.5),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Text(
                                    'Upgrade Plan',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff18153F),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 32,
                                    left: 66,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Image.asset(
                                      'assets/images/cross.png',
                                      width: 27,
                                      height: 27,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 9.5),

                            SizedBox(
                              width: 207,
                              height: 207,
                              child: Image.asset('assets/images/rocket.png'),
                            ),

                            const SizedBox(height: 40),
                            Text(
                              'Seamless Anime\n Experience, Ad-Free.',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.ralewayBold24.copyWith(
                                color: AppColors.cardTitle,
                              ),
                            ),
                            Text(
                              'Enjoy unlimited anime streaming without\n interruptions.',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.ralewayRegular14.copyWith(
                                color: AppColors.gray100,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            /// Plans
                            const SizedBox(height: 36),

                            ValueListenableBuilder<String>(
                              valueListenable: selectedPlan,
                              builder: (context, value, _) {
                                return Column(
                                  children: [
                                    PlanCard(
                                      planTitle: 'Monthly',
                                      planSubsMoney: '\$5 USD ',
                                      planSubsDuration: '/Month',
                                      isSelected: value == "Monthly",
                                      onTap: () {
                                        selectedPlan.value = "Monthly";
                                      },
                                    ),
                                    const SizedBox(height: 16),
                                    PlanCard(
                                      planTitle: 'Annually',
                                      planSubsMoney: '\$50 USD ',
                                      planSubsDuration: '/Year',
                                      isSelected: value == "Annually",
                                      onTap: () {
                                        selectedPlan.value = "Annually";
                                      },
                                    ),
                                  ],
                                );
                              },
                            ),

                            const SizedBox(height: 34),
                            CustomButton(
                              text: 'Continue',
                              width: 343,
                              height: 46,
                              buttonType: ButtonType.filled,
                              backgroundColor: AppColors.primary,
                              textColor: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
