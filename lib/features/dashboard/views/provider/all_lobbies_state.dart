import 'package:flutter/widgets.dart';

class AllLobbiesState extends ChangeNotifier {
  List<String> lobbies = ['1', '2', '3', '4'];
  List<bool> selected = [false, false, false, false];
  void select(int index) {
    selected[index] = !selected[index];
    notifyListeners();
  }
}
