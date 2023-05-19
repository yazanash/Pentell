import 'package:pentelligence/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/course/models/services/community_service.dart';

class CommunityUsecases {
  final CommunityService _communityService;
  const CommunityUsecases(this._communityService);

  Future<Either<Failure, Unit>> addCloseFriend() {
    return _communityService.addCloseFriend();
  }

  Future<Either<Failure, Unit>> addFamilyMember() {
    return _communityService.addFamilyMember();
  }

  Future<Either<Failure, Unit>> follow() {
    return _communityService.follow();
  }

  Future<Either<Failure, Unit>> mute() {
    return _communityService.mute();
  }

  Future<Either<Failure, Unit>> personalRate() {
    return _communityService.personalRate();
  }

  Future<Either<Failure, Unit>> unFollow() {
    return _communityService.unFollow();
  }
}
