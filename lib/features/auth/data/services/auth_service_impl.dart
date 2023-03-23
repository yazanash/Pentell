import 'package:pentelligence/core/backend/network_info.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/auth/data/sources/auth_local_source.dart';
import 'package:pentelligence/features/auth/data/sources/auth_remote_source.dart';
import 'package:pentelligence/features/auth/models/services/auth_service.dart';

class AuthServiceImple implements AuthService {
  final AuthLocalSource localSource;
  final AuthRemoteSource remoteSource;
  final NetworkInfo networkInfo;

  AuthServiceImple(this.localSource, this.remoteSource, this.networkInfo);

  @override
  Future<Either<Failure, bool>> requestEmailAuth(String email) async {
    if (await networkInfo.isConnected) {
      try {
        remoteSource.RequestEmailVerification(email);
        return const Right(true);
      } catch (e) {
        return Left(FailedAuthFailure(''));
      }
    } else {
      return Left(OfflineFailure(''));
    }
  }

  @override
  Future<Either<Failure, bool>> requestPhoneAuth(String phoneNum) async {
    if (await networkInfo.isConnected) {
      try {
        remoteSource.RequestPhoneVerification(phoneNum);
        return const Right(true);
      } catch (e) {
        return Left(FailedAuthFailure(''));
      }
    } else {
      return Left(OfflineFailure(''));
    }
  }

  @override
  Future<Either<Failure, bool>> verifyEmailCode(String code) async {
    if (await networkInfo.isConnected) {
      try {
        remoteSource.verifyEmailCode(code);
        return const Right(true);
      } catch (e) {
        return Left(FailedAuthFailure(''));
      }
    } else {
      return Left(OfflineFailure(''));
    }
  }

  @override
  Future<Either<Failure, bool>> verifyPhoneCode(String code) async {
    if (await networkInfo.isConnected) {
      try {
        remoteSource.VerifyPhoneCode(code);
        return const Right(true);
      } catch (e) {
        return Left(FailedAuthFailure(''));
      }
    } else {
      return Left(OfflineFailure(''));
    }
  }
}
