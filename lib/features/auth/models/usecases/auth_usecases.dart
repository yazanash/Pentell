import 'package:pentelligence/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pentelligence/features/auth/models/services/auth_service.dart';
import 'package:pentelligence/injection_dependancy.dart' as di;

class AuthUsecases extends AuthService {
  final AuthService _authService = di.sl();

  @override
  Future<Either<Failure, bool>> requestEmailAuth(String email) async {
    return await _authService.requestEmailAuth(email);
  }

  @override
  Future<Either<Failure, bool>> verifyEmailCode(String code) async {
    return await _authService.verifyEmailCode(code);
  }
}
