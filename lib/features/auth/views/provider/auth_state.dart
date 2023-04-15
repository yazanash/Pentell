import 'package:flutter/widgets.dart';

class AuthState extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set setLoading(bool val) {
    _isLoading = val;
    notifyListeners();
  }

  Future<void> testBtn() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 3));
    _isLoading = false;
    notifyListeners();
  }

  int _level = 0;
  int get level => _level;
  void set setLevel(int level) {
    _level = level;
    notifyListeners();
  }
}
