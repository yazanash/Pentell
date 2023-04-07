import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';

abstract class CommunityService {
  Future<Either<Failure, Unit>> follow();
  Future<Either<Failure, Unit>> addCloseFriend();
  Future<Either<Failure, Unit>> addFamilyMember();
  Future<Either<Failure, Unit>> unFollow();
  Future<Either<Failure, Unit>> mute();
  Future<Either<Failure, Unit>> personalRate();
  // Future<Either<Failure, Unit>> getAllReels();
}
