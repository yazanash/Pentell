import 'package:http/http.dart' as http;
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/errors/exeptions.dart';
import 'package:pentelligence/features/auth/data/sources/auth_local_source.dart';
import 'package:pentelligence/features/auth/models/entities/user.dart';

abstract class AuthRemoteSource {
  Future<bool> requestEmailVerification(String email);
  Future<User> verifyEmailCode(String code);
}

class AuthRemoteSourceImpl implements AuthRemoteSource {
  final AuthLocalSource localSource;
  AuthRemoteSourceImpl({
    required this.localSource,
  });
  @override
  Future<bool> requestEmailVerification(String data) async {
    var res = await callApi(false);
    if (res.statusCode == 200) {
      //  TODO: save Email in localS...
      return true;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<User> verifyEmailCode(String code) async {
    var res = await callApi(true);
    throw UnimplementedError();
  }

  Future<http.Response> callApi(bool code) async {
    if (code) {
      return http.post(
        Uri.parse(HTTP_API_URL + HTTP_CODE_VERIFY),
      );
    } else {
      return http.post(
        Uri.parse(HTTP_API_URL + HTTP_EMAIL_LOGIN),
      );
    }
  }
}
