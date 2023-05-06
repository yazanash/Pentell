import 'package:flutter/widgets.dart';

class ProfileState extends ChangeNotifier {
  int _sTab = 0;
  int get current => _sTab;
  void set tab(int index) {
    _sTab = index;
    notifyListeners();
  }

  bool _following = false;
  bool get following => _following;
  void set follow(bool f) {
    _following = f;
    notifyListeners();
  }
}
