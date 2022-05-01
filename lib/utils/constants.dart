import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();

  static final AppColors _colors = AppColors._();
  static final AppThemes _themes = AppThemes._();
  static final AppPaddings _paddings = AppPaddings._();

  static AppColors get getColors => _colors;
  static AppThemes get getThemes => _themes;
  static AppPaddings get getPaddings => _paddings;
}

class AppColors {
  AppColors._();

  final white = Colors.white;

  final black = Colors.black87;

  final grey = Colors.grey;

  final purple = const Color.fromRGBO(103, 65, 209, 100);

  final red = Colors.red;
}

class AppThemes {
  AppThemes._();

  final TextTheme firstScreen = TextTheme(
      // for Week in Paris
      headline1: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.purple,
          fontWeight: FontWeight.bold,
          fontSize: 36),
      // 2021 Fashion show in Paris
      headline2: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13),
      // Explore
      headline3: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26),
      // scroll view
      headline4: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.black,
          fontWeight: FontWeight.w700,
          fontSize: 14),
      // -character names
      headline5: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16),
      // -city name
      headline6: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 15));

  final TextTheme secondScreen = TextTheme(
    // for messages, likes, watched counts
    headline1: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w600,
        fontSize: 12),
    // name
    headline2: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24),
    // info
    headline3: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 14),
    // Follow
    headline4: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w800,
        fontSize: 14),
  );
}

class AppPaddings {
  AppPaddings._();

  final double kDefaultPadding = 25;
}
