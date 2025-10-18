import 'package:flutter/material.dart';
import 'colors.dart'; // so we can use AppColors

class AppTextStyles {
  static const TextStyle header = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const TextStyle subHeader = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  static const TextStyle paragraph = TextStyle(
    fontSize: 16,
    color: AppColors.text,
    height: 1.5, // line spacing
  );

  static const TextStyle small = TextStyle(
    fontSize: 13,
    color: AppColors.grey,
  );
}
