import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6B1B29); // العنابي الداكن
  static const Color navy = Color(0xFF1B2238);    // الكحلي
  static const Color background = Color(0xFFF8F9FA);
  static const Color textDark = Color(0xFF212529);
  static const Color textMuted = Color(0xFF6C757D);
}

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: 'Poppins',
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: AppColors.textDark),
    titleTextStyle: TextStyle(color: AppColors.textDark, fontSize: 18, fontWeight: FontWeight.bold),
  ),
);