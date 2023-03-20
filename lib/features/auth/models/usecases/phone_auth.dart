import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/services/user_service.dart';

class PhoneAuth {
  final UserService userService;
  PhoneAuth(this.userService);
  Future<Either<Failure, bool>> call() async {
    return await userService.phoneAuth();
  }
}
