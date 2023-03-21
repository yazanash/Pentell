import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/connection/network_info.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/data/sources/user_local_source.dart';
import 'package:pentelligence/features/auth/data/sources/user_remote_source.dart';

abstract class UserService {
  Future<Either<Failure, bool>> requestEmailAuth(String email);
  Future<Either<Failure, bool>> verifyEmailCode(String code);
  Future<Either<Failure, bool>> requestPhoneAuth(String phoneNum);
  Future<Either<Failure, bool>> verifyPhoneCode(String code);
}
