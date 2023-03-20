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
  Future<Either<Failure, bool>> emailAuth() {
    // TODO: implement emailAuth
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> phoneAuth() {
    // TODO: implement phoneAuth
    throw UnimplementedError();
  }
}
