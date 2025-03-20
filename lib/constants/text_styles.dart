import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const String fontFamily = 'Pretendard';

  static const TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlack,
  );

  static const TextStyle bodyL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlack,
  );

  static const TextStyle bodyM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryBlack,
  );

  static const TextStyle bodyS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryBlack,
  );
}
