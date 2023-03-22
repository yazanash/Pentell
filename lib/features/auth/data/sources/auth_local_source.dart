import 'package:hive/hive.dart';
import 'package:pentelligence/features/auth/data/models/user_model.dart';

abstract class AuthLocalSource {
  Future<UserModel> getUserAuth();
  Future<void> saveUserAuth();
}

class AuthLocalSourceImpl implements AuthLocalSource {
  final Box<Map<String,dynamic>> userbox;

  AuthLocalSourceImpl(this.userbox);

  @override
  Future<UserModel> getUserAuth() {
    // TODO: implement getUserAuth
    throw UnimplementedError();
  }

  @override
  Future<void> saveUserAuth() {
    // TODO: implement saveUserAuth
    throw UnimplementedError();
  }
}
