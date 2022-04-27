import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

const COLOR_WHITE = Colors.white;

const COLOR_BLACK = Colors.black87;

const COLOR_GREY = Colors.grey;

const COLOR_PURPLE = Color.fromRGBO(103, 65, 209, 100);

const COLOR_RED = Colors.red;

const TextTheme TEXT_THEME_FIRST_PAGE = TextTheme(
    // for Week in Paris
    headline1: TextStyle(
        fontFamily: "RadioCanada",
        color: COLOR_PURPLE,
        fontWeight: FontWeight.bold,
        fontSize: 36),
    // 2021 Fashion show in Paris
    headline2: TextStyle(
        fontFamily: "RadioCanada",
        color: COLOR_BLACK,
        fontWeight: FontWeight.w500,
        fontSize: 13),
    // Explore
    headline3: TextStyle(
        fontFamily: "RadioCanada",
        color: COLOR_BLACK,
        fontWeight: FontWeight.bold,
        fontSize: 26),
    // scroll view
    headline4: TextStyle(
        fontFamily: "RadioCanada",
        color: COLOR_BLACK,
        fontWeight: FontWeight.w700,
        fontSize: 14),
    // -character names
    headline5: TextStyle(
        fontFamily: "RadioCanada",
        color: COLOR_BLACK,
        fontWeight: FontWeight.bold,
        fontSize: 16),
    // -city name
    headline6: TextStyle(
        fontFamily: "RadioCanada",
        color: COLOR_BLACK,
        fontWeight: FontWeight.w500,
        fontSize: 15));

const TextTheme TEXT_THEME_SECOND_PAGE = TextTheme(
  // for messages, likes, watched counts
  headline1: TextStyle(
      fontFamily: "RadioCanada",
      color: COLOR_WHITE,
      fontWeight: FontWeight.w600,
      fontSize: 12),
  // name
  headline2: TextStyle(
      fontFamily: "RadioCanada",
      color: COLOR_WHITE,
      fontWeight: FontWeight.bold,
      fontSize: 24),
  // info
  headline3: TextStyle(
      fontFamily: "RadioCanada",
      color: COLOR_WHITE,
      fontWeight: FontWeight.w500,
      fontSize: 14),
  // Follow
  headline4: TextStyle(
      fontFamily: "RadioCanada",
      color: COLOR_WHITE,
      fontWeight: FontWeight.w800,
      fontSize: 14),
);
