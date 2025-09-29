import 'package:clean_arch_task/core/enum/button_type.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:clean_arch_task/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailsBottomActions extends StatelessWidget {
  const DetailsBottomActions({
    super.key,
    required this.previewPressed,
    required this.watchPresser,
  });
  final void Function() previewPressed;
  final void Function() watchPresser;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.detailsBottomBg,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                // height: 90,
                child: CustomButton(
                  buttonType: ButtonType.filled,
                  text: "Preview",
                  textColor: AppColors.textWhite,
                  icon: const Icon(
                    Icons.visibility_outlined,
                    color: AppColors.textWhite,
                    size: 20,
                  ),
                  backgroundColor: const Color(0xff8d899866),
                  onPressed: previewPressed,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                // height: 90,
                child: CustomButton(
                  buttonType: ButtonType.filled,
                  text: "Watch Now",
                  textColor: AppColors.textWhite,
                  icon: const Icon(
                    Icons.play_arrow,
                    color: AppColors.white,
                    size: 20,
                  ),
                  onPressed: watchPresser,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
