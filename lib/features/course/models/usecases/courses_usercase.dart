import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/data/services/course_service_impl.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';
import 'package:pentelligence/features/course/models/services/course_service.dart';
import 'package:pentelligence/injection_dependancy.dart' as di;

class CoursesUsecases {
  final CourseService _courseService;
  CoursesUsecases(this._courseService);

  //  USER usecases

  Future<Either<Failure, List<CVersion>>> getAllCourses() async {
    return await _courseService.getAllCourses();
  }

  Future<Either<Failure, Unit>> inviteFriends(int profileId) async {
    return await _courseService.inviteFriends(profileId);
  }

  Future<Either<Failure, Unit>> joinCourse(Course course) async {
    return await _courseService.joinCourse(course);
  }

  Future<Either<Failure, Unit>> rateCourse(Course course) async {
    return await _courseService.rateCourse(course);
  }

  Future<Either<Failure, Unit>> addToWishList(Course course) async {
    return await _courseService.addToWishList(course);
  }

  //  ORG usecases

  Future<Either<Failure, Unit>> addCourse(Course course) async {
    return await _courseService.addCourse(course);
  }

  Future<Either<Failure, Unit>> addCVersion(CVersion course) async {
    return await _courseService.addCVersion(course);
  }

  Future<Either<Failure, Unit>> modify(CVersion course) async {
    return await _courseService.modify(course);
  }

  Future<Either<Failure, Unit>> delete(int courseId) async {
    return await _courseService.delete(courseId);
  }

  //  Genral purpose
  Future<Either<Failure, List<OrgProfile>>> getAllOrgs() async {
    return await _courseService.getAllOrgs();
  }
}
