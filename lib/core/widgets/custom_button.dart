import 'package:clean_arch_task/core/enum/button_type.dart';
import 'package:clean_arch_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    this.fontSize = 15,
    this.fontWeight = FontWeight.w500,
    this.buttonType = ButtonType.text,
    this.width = 100,
    this.height = 40,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double fontSize;
  final FontWeight fontWeight;
  final ButtonType buttonType;
  final double height;

  final double width;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: _buildButtonStyle(),
        child: icon != null
            ? Row(
                children: [
                  icon!,
                  const SizedBox(width: 8.3),

                  Text(text),
                ],
              )
            : Text(text),
      ),
    );
  }

  ButtonStyle _buildButtonStyle() {
    return ButtonStyle(
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: buttonType == ButtonType.outlined
              ? BorderSide(color: borderColor ?? AppColors.primary)
              : BorderSide.none,
        ),
      ),
      elevation: WidgetStatePropertyAll(2),
      backgroundColor: WidgetStateProperty.all(
        buttonType == ButtonType.filled
            ? (backgroundColor ?? AppColors.primary)
            : Colors.transparent,
      ),
      foregroundColor: WidgetStateProperty.all(textColor ?? Colors.black),
      textStyle: WidgetStateProperty.all(
        TextStyle(fontSize: fontSize, fontWeight: fontWeight, height: 1.47),
      ),
    );
  }
}
