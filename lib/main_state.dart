import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/constant/constant.dart';

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
    print(_theme);
    notifyListeners();
  }
}
