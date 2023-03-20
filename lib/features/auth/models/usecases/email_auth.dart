import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/services/user_service.dart';

class EmailAuth {
  final UserService userService;
  EmailAuth(this.userService);

  Future<Either<Failure, bool>> call() async {
    return await userService.emailAuth();
  }
}
