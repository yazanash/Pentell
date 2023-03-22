import 'package:pentelligence/features/auth/models/entities/user.dart';

abstract class AuthRemoteSource {
  Future<void> RequestEmailVerification(String email);
  Future<bool> verifyEmailCode(String code);
  Future<void> RequestPhoneVerification(String phone);
  Future<bool> VerifyPhoneCode(String code);
}

class AuthRemoteSourceImpl implements AuthRemoteSource {
  @override
  Future<void> RequestEmailVerification(String data) {
    // TODO: implement RequestVerification
    throw UnimplementedError();
  }

  @override
  Future<bool> verifyEmailCode(String code) {
    // TODO: implement verifyCode
    throw UnimplementedError();
  }
  
  @override
  Future<void> RequestPhoneVerification(String phone) {
    // TODO: implement RequestPhoneVerification
    throw UnimplementedError();
  }
  
  @override
  Future<bool> VerifyPhoneCode(String code) {
    // TODO: implement VerifyPhoneCode
    throw UnimplementedError();
  }
}
