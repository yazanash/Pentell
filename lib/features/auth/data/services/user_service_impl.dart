import 'package:pentelligence/core/connection/network_info.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/auth/data/sources/user_local_source.dart';
import 'package:pentelligence/features/auth/data/sources/user_remote_source.dart';
import 'package:pentelligence/features/auth/models/services/user_service.dart';

class UserServiceImple implements UserService {
  final UserLocalSource localSource;
  final UserRemoteSource remoteSource;
  final NetworkInfo networkInfo;

  UserServiceImple(this.localSource, this.remoteSource, this.networkInfo);

  @override
  Future<Either<Failure, bool>> requestEmailAuth(String email) async {
    if (await networkInfo.isConnected) {
      try {
        remoteSource.RequestEmailVerification(email);
        return const Right(true);
      } catch (e) {
        return Left(FailedAuthFailure());
      }
    } else {
      return Left(NoInternetFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> requestPhoneAuth(String phoneNum) {
    // TODO: implement requestPhoneAuth
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> verifyEmailCode(String code) {
    // TODO: implement verifyEmailCode
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> verifyPhoneCode(String code) {
    // TODO: implement verifyPhoneCode
    throw UnimplementedError();
  }
}
