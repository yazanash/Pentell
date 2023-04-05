import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';

abstract class AuthService {
  Future<Either<Failure, bool>> requestEmailAuth(String email);
  Future<Either<Failure, bool>> verifyEmailCode(String code);
}
