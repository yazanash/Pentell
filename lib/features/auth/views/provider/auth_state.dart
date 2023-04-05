import 'package:flutter/widgets.dart';

class AuthState extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set setLoading(bool val) {
    _isLoading = val;
    notifyListeners();
  }

  testBtn() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 3));
    _isLoading = false;
    notifyListeners();
  }
}
