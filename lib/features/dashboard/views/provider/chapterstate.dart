import 'package:flutter/material.dart';
import 'package:pentelligence/features/dashboard/models/entities/chapter.dart';

class ChaptersState extends ChangeNotifier {
  List<Chapter> chapters = [];
  void add(Chapter chapter) {
    chapters.add(chapter);
    notifyListeners();
  }
  void addOp(String? sub,int index) {
    chapters[index].subTitles.add(sub);
    notifyListeners();
  }
}
