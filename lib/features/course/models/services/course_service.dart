import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';

abstract class CourseService {
  //  USER
  Future<Either<Failure, Unit>> joinCourse(Course course);
  Future<Either<Failure, Unit>> inviteFriends();
  Future<Either<Failure, List<Course>>> getAllCourses();
  Future<Either<Failure, Unit>> addToWishList(Course course);
  Future<Either<Failure, Unit>> rateCourse(Course course);
  //  ORG
  Future<Either<Failure, Unit>> addCourse();
  Future<Either<Failure, Unit>> modify();
  Future<Either<Failure, Unit>> delete();
  Future<Either<Failure, Unit>> addCVersion();

  //  General-purpose
  Future<Either<Failure, List<OrgProfile>>> getAllOrgs();
}
