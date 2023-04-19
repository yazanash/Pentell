import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final primary = generateMaterialColor(Color(0xFF262F38));

final background = Color.fromARGB(255, 0, 77, 166);

final darkTheme = _darkTheme2();

ThemeData _darkTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
    primaryColor: primary,
    primaryColorDark: primary,
    splashColor: primary,
    backgroundColor: background,
    scaffoldBackgroundColor: background,

    // applyElevationOverlayColor: true,
    textTheme: textTheme(base.textTheme),
    buttonTheme: ButtonThemeData().copyWith(
      splashColor: background,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData().copyWith(
      backgroundColor: Color(0xFF6BD4F9),
      foregroundColor: Colors.white,
    ),
    appBarTheme: AppBarTheme().copyWith(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),
    navigationBarTheme: NavigationBarThemeData().copyWith(
      backgroundColor: primary,
      indicatorColor: primary.shade600,
    ),
  );
}

ThemeData _darkTheme2() {
  final base = ThemeData.dark();
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: primary,

    // colorScheme: ColorScheme.fromSwatch(
    //   primarySwatch: Colors.red,
    //   backgroundColor: Colors.amber,
    //   primaryColorDark: Colors.white,
    //   accentColor: generateMaterialColor(Colors.purple),
    //   cardColor: primary,

    //   brightness: Brightness.dark,
    // ),

    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF6bd4f9),
      onPrimary: Color(0xff191716),
      secondary: Color(0xff262f38),
      onSecondary: Color(0xffffffff),
      error: Colors.red,
      onError: Colors.white,
      // background: Color(0xff464646),
      background: primary,
      onBackground: Color(0xffffffff),
      // surface: Color(0xff191716),
      surface: primary,
      onSurface: Color(0xffffffff),
      surfaceTint: Colors.transparent,
      tertiary: Color(0xFFFD830D),
      // surfaceVariant: Colors.white70,
      primaryContainer: Color(0xFF6BD4F9),
      onPrimaryContainer: Colors.blueGrey.shade900,
      secondaryContainer:Color(0xff00aaee),
      onSecondaryContainer: primary.shade600,
    ),
    // navigationBarTheme:
    //     NavigationBarThemeData().copyWith(backgroundColor: primary.shade400),
    // appBarTheme: AppBarTheme(backgroundColor: primary),

    // cardTheme: CardTheme().copyWith(color: Colors.deepOrange),
    // backgroundColor: Colors.white,
    // primaryIconTheme: primaryIconThemeData(base.primaryIconTheme),
    // navigationBarTheme: NavigationBarThemeData().copyWith(
    //   backgroundColor: primary,
    //   indicatorColor: primary.shade400,
    //   iconTheme: MaterialStateProperty.all<IconThemeData>(
    //       iconThemeData(base.iconTheme)),
    //   labelTextStyle: MaterialStateProperty.all<TextStyle>(
    //     TextStyle(fontSize: 14, color: Colors.white),
    //   ),
    // ),
    textTheme: textTheme(base.textTheme),
  );
}

ThemeData _darkTheme3() {
  final base = ThemeData.dark();
  return base.copyWith(
    primaryColor: primary,
    primaryColorDark: Colors.blue[700],
    primaryColorLight: Colors.blue[100],
    textTheme: textTheme(base.textTheme),
    iconTheme: iconThemeData(base.iconTheme),
    primaryIconTheme: primaryIconThemeData(base.primaryIconTheme),
    progressIndicatorTheme:
        progressIndicatorThemeData(base.progressIndicatorTheme),
  );
}

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
        color: Colors.lightBlueAccent,
      ),
// for sub-widgets contents/paragraph
      bodyText2: base.bodyText2!.copyWith(fontSize: 12),
    );

IconThemeData primaryIconThemeData(IconThemeData base) =>
    base.copyWith(color: Colors.white);
IconThemeData iconThemeData(IconThemeData base) => base.copyWith();
IconThemeData accentIconThemeData(IconThemeData base) => base.copyWith();

ProgressIndicatorThemeData progressIndicatorThemeData(
        ProgressIndicatorThemeData base) =>
    base.copyWith();

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.2),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.1),
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
