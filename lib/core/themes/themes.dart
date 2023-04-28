import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final primary = Color(0xFF111519);
final background = Color(0xFF262F38);

final ThemeData lightTheme = _lightTheme();

NavigationBarThemeData bottomNav(NavigationBarThemeData base) => base.copyWith(
    // indicatorColor: Colors.white.withOpacity(0.5),
    backgroundColor: const Color(0xff0A2239),
    labelTextStyle: MaterialStateProperty.all<TextStyle?>(const TextStyle(
      color: Colors.white,
      fontSize: 14,
    )),
    iconTheme: MaterialStateProperty.all<IconThemeData?>(
        const IconThemeData(color: Colors.white)));

TextTheme textTheme(TextTheme base) => base.copyWith(
// This'll be our appbars title
      headline1: const TextStyle(fontSize: 24),
// for widgets heading/title
      headline2: base.headline2!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
// for sub-widgets heading/title
      headline3: base.headline3!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      headline4: base.headline4!.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
// for widgets contents/paragraph
      bodyText1: base.bodyText1!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
// for sub-widgets contents/paragraph
      bodyText2: base.bodyText2!.copyWith(fontSize: 12),
    );
ThemeData _lightTheme() {
  final base = ThemeData.light();
  return ThemeData(
      useMaterial3: true,
      // backgroundColor: Colors.red,
      scaffoldBackgroundColor: Color(0xfff0f0f0),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff6bd4f9),
        onPrimary: Colors.white,
        secondary: Color(0xff00aaee),
        onSecondary: Colors.white,
        error: Colors.white,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Color(0xffffffff),
        onSurface: Color(0xff191716),
        surfaceTint: Color(0xffeeeeee),
      ),
      textTheme: textTheme(base.textTheme));
}

// AppBarTheme appBarTheme(AppBarTheme base) => base.copyWith(
//       backgroundColor: const Color(0xff53A2BE),
//     );

IconThemeData iconTheme(IconThemeData base) =>
    base.copyWith(color: Colors.black);

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);
