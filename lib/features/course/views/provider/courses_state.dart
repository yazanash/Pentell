import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/usecases/courses_usercase.dart';
import 'package:pentelligence/injection_dependancy.dart' as di;

class CoursesPageState extends ChangeNotifier {
  final CoursesUsecases _coursesUsecases = di.sl();

  List<Course> courses = [];
  List<OrgProfile> orgProfile = [];
  Failure? hasCoursesError, hasjoinError, hasWishlistError, hasOrgsError;
  List<int> temp = [0, 1, 2];
  List<bool> love = [false, false, false];
  List<bool> saved = [false, false, false];

  void insertItem(int item) {
    temp.insert(0, item);
    notifyListeners();
  }

  void removeItem(int index) {
    temp.removeAt(index);
  }

  void loveItem(int index) {
    love[index] = !love[index];
    notifyListeners();
  }

  void save(int index) {
    saved[index] = !saved[index];
    notifyListeners();
  }

  // Future<bool> loadCourses() async {
  //   final either = await _coursesUsecases.getAllCourses();
  //   bool res = either.fold(
  //     (failure) {
  //       //  fail must throw execption
  //       hasCoursesError = failure;
  //       return false;
  //     },
  //     (loadedCourses) {
  //       //  success
  //       hasCoursesError = null;
  //       courses = loadedCourses;
  //       return true;
  //     },
  //   );
  //   notifyListeners();
  //   return res;
  // }

  // Future<bool> loadOrgsWithReals() async {
  //   final either = await _coursesUsecases.getAllOrgs();
  //   bool res = either.fold(
  //     (failure) {
  //       hasOrgsError = failure;
  //       return false;
  //     },
  //     (listOfOrgs) {
  //       hasOrgsError = null;
  //       orgProfile = listOfOrgs;
  //       return true;
  //     },
  //   );
  //   notifyListeners();
  //   return res;
  // }

  // Future<bool> joinCourse(Course course) async {
  //   final either = await _coursesUsecases.joinCourse(course);
  //   bool res = either.fold(
  //     (failure) {
  //       hasjoinError = failure;
  //       return false;
  //     },
  //     (unit) {
  //       hasjoinError = null;
  //       return true;
  //     },
  //   );
  //   notifyListeners();
  //   return res;
  // }

  // Future<bool> addtoWishlist(Course course) async {
  //   final either = await _coursesUsecases.addToWishList(course);
  //   bool res = either.fold(
  //     (failure) {
  //       hasWishlistError = failure;
  //       return false;
  //     },
  //     (unit) {
  //       hasWishlistError = null;
  //       return true;
  //     },
  //   );
  //   notifyListeners();
  //   return res;
  // }
}
