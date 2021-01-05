import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'app.colors.dart';

class AppTheme {
  AppTheme._();

  static TextTheme textTheme = TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    headline5: headline5,
    button: button,
    caption: caption,
    bodyText1: body,
    bodyText2: bodySmall,
    subtitle1: input,
    subtitle2: smallText,
  );

  static TextStyle headline1 = TextStyle(
    color: AppColors.customGreyLevels[400],
    fontFamily: "Gothanm",
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle headline2 = TextStyle(
    color: AppColors.customGreyLevels[400],
    fontFamily: "Gothanm",
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headline3 = TextStyle(
    color: AppColors.customGreyLevels[400],
    fontFamily: "Gothanm",
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle headline4 = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.customGreyLevels[400],
    fontSize: 16,
    fontFamily: "Gothanm",
  );

  static TextStyle headline5 = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.customGreyLevels[400],
    fontFamily: "Gothanm",
    fontSize: 14,
  );

  static TextStyle button = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: "Gotham",
    fontSize: 14,
  );

  static TextStyle caption = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.primaryColors[200],
    fontSize: 14,
  );

  static TextStyle input = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.primaryColors[200],
    fontSize: 14,
  );

  static TextStyle body = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.primaryColors[200],
    fontSize: 12,
  );

  static TextStyle bodySmall = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontFamily: "Gotham",
    fontSize: 12,
  );

  static TextStyle smallText = TextStyle(
    color: AppColors.customGreyLevels[300],
    fontFamily: "Gothanm",
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
