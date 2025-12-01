import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF00FFC6);
  static const Color secondaryColor = Color(0xFF0A192F);
  static const Color backgroundColor = Color(0xFF020C1B);
  static const Color cardColor = Color(0xFF112240);
  static const Color textColor = Colors.white;
  static const Color subtitleColor = Color(0xFF8892B0);
}

class AppTextStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 16,
    color: AppColors.subtitleColor,
  );
  static const TextStyle sectionTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
}
