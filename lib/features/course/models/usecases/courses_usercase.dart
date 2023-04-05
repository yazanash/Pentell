import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/services/course_service.dart';
import 'package:pentelligence/injection_dependancy.dart' as di;

class CoursesUsecases implements CourseService {
  final CourseService _courseService = di.sl();

  //  USER usecases
  @override
  Future<Either<Failure, List<Course>>> getAllCourses() async {
    return await _courseService.getAllCourses();
  }

  @override
  Future<Either<Failure, Unit>> inviteFriends() async {
    return await _courseService.inviteFriends();
  }

  @override
  Future<Either<Failure, Unit>> joinCourse(Course course) async {
    return await _courseService.joinCourse(course);
  }

  @override
  Future<Either<Failure, Unit>> rateCourse(Course course) async {
    return await _courseService.rateCourse(course);
  }

  @override
  Future<Either<Failure, Unit>> addToWishList(Course course) async {
    return await _courseService.addToWishList(course);
  }

  //  ORG usecases
  @override
  Future<Either<Failure, Unit>> addCourse() async {
    return await _courseService.addCourse();
  }

  @override
  Future<Either<Failure, Unit>> addCVersion() async {
    return await _courseService.addCVersion();
  }

  @override
  Future<Either<Failure, Unit>> modify() async {
    return await _courseService.modify();
  }

  @override
  Future<Either<Failure, Unit>> delete() async {
    return await _courseService.delete();
  }

  //  Genral purpose
  @override
  Future<Either<Failure, List<OrgProfile>>> getAllOrgs() async {
    return await _courseService.getAllOrgs();
  }
}
