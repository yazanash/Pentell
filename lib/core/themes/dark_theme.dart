import 'package:flutter/material.dart';

final primary = MaterialColor(
  Color(0xFF111519).value,
  {
    500: Color(0xFF111519),
  },
);
final background = Color(0xFF262F38);

final darkTheme = _darkTheme();

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
      indicatorColor: background,
    ),
  );
}

ThemeData _darkTheme2() {
  final base = ThemeData.dark();
  return base.copyWith(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: primary,
      accentColor: Color(0xFF552255),
    ),
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
      headline1: base.headline1!.copyWith(
          fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
// for widgets heading/title
      headline2: base.headline2!.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: const Color(0xff0A2239),
      ),
// for sub-widgets heading/title
      headline3: base.headline3!.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      headline4: base.headline4!.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: const Color(0xff0A2239),
      ),
// for widgets contents/paragraph
      bodyText1: base.bodyText1!.copyWith(
          fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),
// for sub-widgets contents/paragraph
      bodyText2: base.bodyText2!.copyWith(
          fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
    );

IconThemeData primaryIconThemeData(IconThemeData base) => base.copyWith();
IconThemeData iconThemeData(IconThemeData base) => base.copyWith();
IconThemeData accentIconThemeData(IconThemeData base) => base.copyWith();

ProgressIndicatorThemeData progressIndicatorThemeData(
        ProgressIndicatorThemeData base) =>
    base.copyWith();
