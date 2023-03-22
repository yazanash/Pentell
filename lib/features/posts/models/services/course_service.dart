import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/posts/models/entities/post.dart';

abstract class CourseService {
  //  USER
  Future<Either<Failure, Unit>> joinCourse();
  Future<Either<Failure, Unit>> inviteFriends();
  Future<Either<Failure, List<Post>>> getAllCourses();
  Future<Either<Failure, Unit>> addToWishList();
  Future<Either<Failure, Unit>> rateCourse();
  //  ORG
  Future<Either<Failure, Unit>> addCourse();
  Future<Either<Failure, Unit>> modify();
  Future<Either<Failure, Unit>> delete();
  Future<Either<Failure, Unit>> addCVersion();
}
