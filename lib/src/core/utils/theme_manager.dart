// Flutter imports:
import 'package:delivery_challenge/src/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/assets/fonts.gen.dart';

class ThemeManager {
  static late ThemeData _themeData;

  void _setThemeData() {
    _themeData = ThemeData(
      scaffoldBackgroundColor: kMainColor,
      textTheme: _initTextStyle,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: kMainColor,
        brightness: Brightness.light,
      ),
    );
  }

  void setPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void defaultOrientationMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  TextTheme get _initTextStyle {
    return const TextTheme(
      headlineSmall: TextStyle(
        color: kSecondColor,
        fontWeight: FontWeight.bold,
        fontSize: 26,
        overflow: TextOverflow.visible,
        fontFamily: FontFamily.montserrat,
      ),
      headlineLarge: TextStyle(
          color: kSecondColor,
          fontWeight: FontWeight.w600,
          fontSize: 32,
          overflow: TextOverflow.visible,
          fontFamily: FontFamily.montserrat),
      titleMedium: TextStyle(
          color: kSecondColor,
          fontWeight: FontWeight.bold,
          fontSize: 17,
          overflow: TextOverflow.visible,
          fontFamily: FontFamily.montserrat),
      labelLarge: TextStyle(
          color: kSecondColor,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          overflow: TextOverflow.visible,
          fontFamily: FontFamily.montserrat),
      labelSmall: TextStyle(
          color: kSecondColor,
          fontWeight: FontWeight.w600,
          fontSize: 12,
          overflow: TextOverflow.visible,
          fontFamily: FontFamily.montserrat),
      bodyLarge: TextStyle(
          color: kSecondColor,
          fontWeight: FontWeight.bold,
          fontSize: 19,
          overflow: TextOverflow.visible,
          fontFamily: FontFamily.montserrat),
      bodyMedium: TextStyle(
          color: kSecondColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          overflow: TextOverflow.visible,
          fontFamily: FontFamily.montserrat),
      bodySmall: TextStyle(
          color: kSecondColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
          overflow: TextOverflow.visible,
          fontFamily: FontFamily.montserrat),
    );
  }

  static ThemeData get myTheme => _themeData;

  static ThemeManager? _instance;
  ThemeManager._init() {
    _setThemeData();
    setPortraitMode();
  }
  factory ThemeManager() => _instance ??= ThemeManager._init();
}
