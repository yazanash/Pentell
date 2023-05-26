import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/backend/network_info.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/data/sources/course_local_source.dart';
import 'package:pentelligence/features/course/data/sources/course_remote_source.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';
import 'package:pentelligence/features/course/models/services/course_service.dart';

class CourseServiceImpl implements CourseService {
  final CourseRemoteSource remoteSource;
  final CourseLocalSource localSource;
  final NetworkInfo networkInfo;

  List<Course> cacheCourse = [],cacheWishlist =[];
  List<OrgProfile> cacheOrgProfile = [];
  

  CourseServiceImpl(this.localSource, this.remoteSource, this.networkInfo);

  @override
  Future<Either<Failure, List<CVersion>>> getAllCourses() async {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addCVersion(CVersion course) {
    // TODO: implement addCVersion
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addCourse(Course course) {
    // TODO: implement addCourse
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addToWishList(Course course) {
    // TODO: implement addToWishList
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> delete(int courseId) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> inviteFriends(int profileId) {
    // TODO: implement inviteFriends
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> joinCourse(Course course) {
    // TODO: implement joinCourse
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> modify(CVersion course) {
    // TODO: implement modify
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> rateCourse(Course course) {
    // TODO: implement rateCourse
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, List<OrgProfile>>> getAllOrgs() {
    // TODO: implement getAllOrgs
    throw UnimplementedError();
  }
  void dispose(){
    
  }
}
