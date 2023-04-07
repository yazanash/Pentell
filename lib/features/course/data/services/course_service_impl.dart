import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/backend/network_info.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/course/data/sources/course_local_source.dart';
import 'package:pentelligence/features/course/data/sources/course_remote_source.dart';
import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/services/course_service.dart';

class CourseServiceImpl extends CourseService {
  final PostLocalSource localSource;
  final PostRemoteSource remoteSource;
  final NetworkInfo networkInfo;

  List<Course> cacheCourse = [],cacheWishlist =[];
  List<OrgProfile> cacheOrgProfile = [];
  

  CourseServiceImpl(this.localSource, this.remoteSource, this.networkInfo);

  @override
  Future<Either<Failure, List<Course>>> getAllCourses() async {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addCVersion() {
    // TODO: implement addCVersion
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addCourse() {
    // TODO: implement addCourse
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addToWishList(Course course) {
    // TODO: implement addToWishList
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> inviteFriends() {
    // TODO: implement inviteFriends
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> joinCourse(Course course) {
    // TODO: implement joinCourse
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> modify() {
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
