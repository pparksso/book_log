import 'package:flutter/material.dart';
import 'package:book_log/constants/colors.dart';
import 'package:book_log/constants/text_styles.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: AppColors.primaryBlack,
      scaffoldBackgroundColor: AppColors.primaryWhite,
      fontFamily: AppTextStyles.fontFamily,

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryWhite,
        titleTextStyle: AppTextStyles.bodyL,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.unSelectedBtnBack,
          textStyle: AppTextStyles.bodyM,
        ),
      ),

      textTheme: TextTheme(
        displayLarge: AppTextStyles.h1,
        bodyLarge: AppTextStyles.bodyL,
        bodyMedium: AppTextStyles.bodyM,
        bodySmall: AppTextStyles.bodyS,
      ),
    );
  }
}
