import 'package:hive/hive.dart';
import 'package:pentelligence/features/auth/data/models/user_model.dart';

abstract class UserLocalSource {
  Future<UserModel> getUserAuth();
  Future<void> saveUserAuth();
}

class UserLocalSourceImpl implements UserLocalSource {
  final Box<Map<String,dynamic>> userbox;

  UserLocalSourceImpl(this.userbox);

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
