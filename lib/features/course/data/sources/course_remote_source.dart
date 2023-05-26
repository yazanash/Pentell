import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/data/models/review_model.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';

abstract class CourseRemoteSource {
  Future<void> joinCourse(String courseUrl);
  Future<void> inviteFriends(String profileId);
  Future<List<CVersion>> getAllCourses();
  Future<void> addToWishList(String courseUrl);
  Future<void> rateCourse(String courseUrl,ReviewModel reviewModel);
  //  ORG
  Future<void> addCourse(Course course);
  Future<void> modify(CVersion course);
  Future<void> delete(String courseId);
  Future<void> addCVersion(CVersion course);

  //  General-purpose
  Future<List<OrgProfile>> getAllOrgs();
}

class CourseRemoteSourceImpl implements CourseRemoteSource {
  @override
  Future<void> addCVersion(CVersion course) {
    // TODO: implement addCVersion
    throw UnimplementedError();
  }

  @override
  Future<void> addCourse(Course course) {
    // TODO: implement addCourse
    throw UnimplementedError();
  }

  @override
  Future<void> addToWishList(String courseUrl) {
    // TODO: implement addToWishList
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String courseId) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<CVersion>> getAllCourses() {
    // TODO: implement getAllCourses
    throw UnimplementedError();
  }

  @override
  Future<List<OrgProfile>> getAllOrgs() {
    // TODO: implement getAllOrgs
    throw UnimplementedError();
  }

  @override
  Future<void> inviteFriends(String profileId) {
    // TODO: implement inviteFriends
    throw UnimplementedError();
  }

  @override
  Future<void> joinCourse(String courseUrl) {
    // TODO: implement joinCourse
    throw UnimplementedError();
  }

  @override
  Future<void> modify(CVersion course) {
    // TODO: implement modify
    throw UnimplementedError();
  }

  @override
  Future<void> rateCourse(String courseUrl, ReviewModel reviewModel) {
    // TODO: implement rateCourse
    throw UnimplementedError();
  }

}
