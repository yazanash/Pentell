import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';

abstract class CourseService {
  //  USER
  Future<Either<Failure, Unit>> joinCourse(Course course);
  Future<Either<Failure, Unit>> inviteFriends(int profileId);
  Future<Either<Failure, List<CVersion>>> getAllCourses();
  Future<Either<Failure, Unit>> addToWishList(Course course);
  Future<Either<Failure, Unit>> rateCourse(Course course);
  //  ORG
  Future<Either<Failure, Unit>> addCourse(Course course);
  Future<Either<Failure, Unit>> modify(CVersion course);
  Future<Either<Failure, Unit>> delete(int courseId);
  Future<Either<Failure, Unit>> addCVersion(CVersion course);

  //  General-purpose
  Future<Either<Failure, List<OrgProfile>>> getAllOrgs();
}
