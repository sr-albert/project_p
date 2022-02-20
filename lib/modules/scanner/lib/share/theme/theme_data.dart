import 'package:flutter/material.dart';
import 'package:project_p/modules/scanner/lib/share/theme/theme_constant.dart';

class AppTheme {
  AppTheme._();

  static const String _fontName = "Lato";

  static final ThemeData primaryThemeData = ThemeData(
      fontFamily: _fontName,
      primaryColor: ThemeConstant.primaryColor,
      textTheme: TextTheme(
          headline1: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),
          subtitle1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ThemeConstant.subTitleTxtColor,
              letterSpacing: -0.3),
          subtitle2: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ThemeConstant.subTitleTxtColor,
              letterSpacing: -0.3),
          bodyText1: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: -0.3)));
}
