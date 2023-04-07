import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/course/models/usecases/courses_usercase.dart';
import 'package:pentelligence/injection_dependancy.dart' as di;

class MemebersState extends ChangeNotifier {
  List<Profile> members = [];
  final CoursesUsecases _coursesUsecases = di.sl();
}
