import 'package:pentelligence/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/connections/models/services/community_service.dart';

class CommunityServiceImpl implements CommunityService{
  @override
  Future<Either<Failure, Unit>> addCloseFriend() {
    // TODO: implement addCloseFriend
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addFamilyMember() {
    // TODO: implement addFamilyMember
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> follow() {
    // TODO: implement follow
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> mute() {
    // TODO: implement mute
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> personalRate() {
    // TODO: implement personalRate
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> unFollow() {
    // TODO: implement unFollow
    throw UnimplementedError();
  }
  
}