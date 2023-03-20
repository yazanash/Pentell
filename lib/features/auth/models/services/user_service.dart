import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/connection/network_info.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/data/sources/user_local_source.dart';
import 'package:pentelligence/features/auth/data/sources/user_remote_source.dart';

abstract class UserService {
  Future<Either<Failure, bool>> emailAuth();
  Future<Either<Failure, bool>> phoneAuth();
}

class UserServiceImpl implements UserService {
  final UserLocalSource localSource;
  final UserRemoteSource remoteSource;
  final NetworkInfo networkInfo;

  UserServiceImpl(this.remoteSource, this.localSource, this.networkInfo);

  @override
  Future<Either<Failure, bool>> emailAuth() async {
    // TODO: implement emailAuth
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, bool>> phoneAuth() {
    // TODO: implement phoneAuth
    throw UnimplementedError();
  }
}
