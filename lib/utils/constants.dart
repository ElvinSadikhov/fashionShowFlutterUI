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

  final COLOR_WHITE = Colors.white;

  final COLOR_BLACK = Colors.black87;

  final COLOR_GREY = Colors.grey;

  final COLOR_PURPLE = const Color.fromRGBO(103, 65, 209, 100);

  final COLOR_RED = Colors.red;
}

class AppThemes {
  AppThemes._();

  final TextTheme firstScreen = TextTheme(
      // for Week in Paris
      headline1: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.COLOR_PURPLE,
          fontWeight: FontWeight.bold,
          fontSize: 36),
      // 2021 Fashion show in Paris
      headline2: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.COLOR_BLACK,
          fontWeight: FontWeight.w500,
          fontSize: 13),
      // Explore
      headline3: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.COLOR_BLACK,
          fontWeight: FontWeight.bold,
          fontSize: 26),
      // scroll view
      headline4: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.COLOR_BLACK,
          fontWeight: FontWeight.w700,
          fontSize: 14),
      // -character names
      headline5: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.COLOR_BLACK,
          fontWeight: FontWeight.bold,
          fontSize: 16),
      // -city name
      headline6: TextStyle(
          fontFamily: "RadioCanada",
          color: AppConstants.getColors.COLOR_BLACK,
          fontWeight: FontWeight.w500,
          fontSize: 15));

  final TextTheme secondScreen = TextTheme(
    // for messages, likes, watched counts
    headline1: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.COLOR_WHITE,
        fontWeight: FontWeight.w600,
        fontSize: 12),
    // name
    headline2: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.COLOR_WHITE,
        fontWeight: FontWeight.bold,
        fontSize: 24),
    // info
    headline3: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.COLOR_WHITE,
        fontWeight: FontWeight.w500,
        fontSize: 14),
    // Follow
    headline4: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.COLOR_WHITE,
        fontWeight: FontWeight.w800,
        fontSize: 14),
  );
}

class AppPaddings {
  AppPaddings._();

  final double kDefaultPadding = 25;
}
