import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/themes/dark_theme.dart';
import 'package:pentelligence/core/themes/themes.dart';

class MainState extends ChangeNotifier {
  int _index = 0;

  int get index => _index;
  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }

  ThemeType _theme = ThemeType.light;
  ThemeType get theme => _theme;
  void setTheme(ThemeType type) {
    _theme = type;
    switch (type) {
      case ThemeType.light:
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
            .copyWith(
                systemNavigationBarColor: lightTheme.colorScheme.background));
        break;
      case ThemeType.dark:
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
            systemNavigationBarColor: darkTheme.colorScheme.background));
        break;
      default:
        break;
    }
    notifyListeners();
  }
}
