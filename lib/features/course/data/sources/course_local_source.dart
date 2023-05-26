import 'package:pentelligence/features/course/models/entities/cversion.dart';

abstract class CourseLocalSource {
  Future<void> cachCourses(List<CVersion> courses);
  Future<void> cachWishList(CVersion course);
  Future<void> cachFinishedCourses(List<CVersion> finished);

}

class CourseLocalSourceImpl implements CourseLocalSource {
  @override
  Future<void> cachCourses(List<CVersion> courses) {
    // TODO: implement cachCourses
    throw UnimplementedError();
  }

  @override
  Future<void> cachFinishedCourses(List<CVersion> finished) {
    // TODO: implement cachFinishedCourses
    throw UnimplementedError();
  }

  @override
  Future<void> cachWishList(CVersion course) {
    // TODO: implement cachWishList
    throw UnimplementedError();
  }
}
