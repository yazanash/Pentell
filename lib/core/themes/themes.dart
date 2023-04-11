import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final primary = Color(0xFF111519);
final background = Color(0xFF262F38);

final ThemeData lightTheme = _lightTheme();
ThemeData darkTheme = _darkTheme();

ThemeData _lightTheme() {
  final base = ThemeData.light();
  return base.copyWith();
}

ThemeData _darkTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
    primaryColor: primary,
    primaryColorDark: primary,
    splashColor: primary,
    backgroundColor: background,
    scaffoldBackgroundColor: background,
    // applyElevationOverlayColor: true,

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
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: primary,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData().copyWith(
      backgroundColor: primary,
      indicatorColor: background,
    ),
  );
}
