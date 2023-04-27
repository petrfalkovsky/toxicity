import 'package:flutter/material.dart';

class AppConfig {
  // Название компании

  ///API Url
  static const String apiUrl = "https://github.com/petrfalkovsky/";

  ///Шрифт
  static const String fontFamilyInter = "Inter";

  ////*------------------Цвета-----------------------------*///
  ///Базовые
  static const Color yellowColor = Color(0xffDCFF03);
  static const Color purpleColor = Color(0xff521A71);
  static const Color blackColor = Color(0xff100815);
  static const Color whiteColor = Color(0xffFFFFFF);

  // Текст Условия и политика
  static const Color privacyText = Color(0xFFBEC3D2);

  // Трекер позиции в PageView
  static const Color planPositionDefaultColor = Color(0xFFD8D8D8);

  /// Обязательное поле
  static const Color textFieldEmptyColor = Color(0xFFD9D9D9);
  static const Color textFieldGradientStart = Color(0xFFF59CEC);
  static const Color textFieldGradientEnd = Color(0xFF3DBDFF);

  /// 1 страница градиенты
  static const Color pointGradientStartFirst = Color(0xFFFFBC8A);
  static const Color pointGradientEndFirst = Color(0xFFE866E5);
  static const Color buttonGradientStartFirst = Color(0xFFFFC883);
  static const Color buttonGradientEndFirst = Color(0xFFE967E5);
  static const Color stepsGradientStartFirst = Color(0xFFF495C0);
  static const Color stepsGradientEndFirst = Color(0xFFA16EFA);

  /// 2 страница градиенты
  static const Color pointGradientStartSecond = Color(0xFF7494FF);
  static const Color pointGradientEndSecond = Color(0xFF81F5A8);
  static const Color buttonGradientStartSecond = Color(0xFF7494FF);
  static const Color buttonGradientEndSecond = Color(0xFF80F0B0);
  static const Color stepsGradientStartSecond = Color(0xFF81F5A9);
  static const Color stepsGradientEndSecond = Color(0xFF7495FF);

  /// 3 страница градиенты
  static const Color pointGradientStartThird = Color(0xFFFF69D3);
  static const Color pointGradientEndThird = Color(0xFF3DBDFF);
  static const Color buttonGradientStartThird = Color(0xFFFF67D5);
  static const Color buttonGradientEndThird = Color(0xFF3DBDFF);
  static const Color stepsGradientStartThird = Color(0xFF4FF0FF);
  static const Color stepsGradientEndThird = Color(0xFFFF60DE);
}
