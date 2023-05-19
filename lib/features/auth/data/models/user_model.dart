import 'package:pentelligence/features/auth/models/entities/user.dart';

class UserModel extends User {
  UserModel(
    int id,
    String email,
    String? phoneNumber,
    String token,
    String isVerified,
  ) : super(
          id: id,
          email: email,
          phoneNumber: phoneNumber,
          token: token,
          isVerified: isVerified,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json['id'],
      json['email'],
      json['phoneNumber'],
      json['token'],
      json['isVerified'],
    );
  }

  Map<String, dynamic> toMap(User user) {
    return {
      "id": user.id,
      "email": user.email,
      "phoneNumber": user.phoneNumber,
      "token": user.token,
      "isVerified": user.isVerified,
    };
  }
}
