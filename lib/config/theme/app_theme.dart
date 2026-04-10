import 'package:flutter/material.dart';
import 'package:skillconnect/config/theme/app_colors.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: AppColors.kScaffoldColor,

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}