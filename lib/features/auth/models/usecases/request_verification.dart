import 'package:dartz/dartz.dart';
import 'package:pentelligence/core/errors/failures.dart';
import 'package:pentelligence/features/auth/models/services/user_service.dart';

class RequestVerificationUsecase {
  final UserService _userService;
  RequestVerificationUsecase(this._userService);

  Future<Either<Failure, bool>> call(bool isEmail, String data) async {
    if (isEmail)
      return await _userService.requestEmailAuth(data);
    else
      return await _userService.requestPhoneAuth(data);
  }
}
