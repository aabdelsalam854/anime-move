import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App Colors
  static const Color primary = Color(0xFF5436F8);
  static const Color primaryDark = Color(0xFF18153F);
  static const Color accent = Color(0xFFDFE4FF);
  static const Color accent2 = Color(0xFFD3D6FF);

  static const Color secondary = Color(0xFFff758f);
  static const Color bgColor = Color(0xFFe5eef0);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [accent, Colors.white],
  );
  //

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  static const Color cardTitle = Color(0xff18153F);
  static const Color cardGenre = Color(0xffA9A9A9);
  static const Color characterAnime = Color(0xffACACAC);
  static const Color textPlan = Color(0xffffa499d7);

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);
  static const Color primaryBackground1 = Color(0xffeef3f7);

  // details screen
  static const Color detailsBg = Color(0xff2C1E51);
  static const Color detailsBottomBg = Color(0xff16103C);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withValues(alpha: 0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error & Validation Colors
  static const Color info = Color(0xFF1976D2);
  static const Color error = Color(0xFFD32F2F);
  static const Color waring = Color(0xFFF57C00);
  static const Color success = Color(0xFF388E3C);

  // Neutral Shades
  static const Color black = Color(0xFF000000);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  // Extra Neutral Shades
  static const Color black30 = Color(0x4D000000); // 30% opacity
  static const Color grayLight = Color(0xFFF9F8FD);
  static const Color gray100 = Color(0xFFAEADB5);
  static const Color gray200 = Color(0xFFACACAC);
  static const Color gray300 = Color(0xFFA9A9A9);
  static const Color gray400 = Color(0xFF1E1E1E);
}
