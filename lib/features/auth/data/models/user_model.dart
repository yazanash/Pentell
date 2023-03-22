import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/features/auth/models/entities/user.dart';

class UserModel extends User {
  UserModel(
      int id,
      String name,
      String email,
      String phoneNumber,
      String token,
      String imageUrl,
      String isVerified,
      UserType userType,)
      : super(
            id: id,
            name: name,
            email: email,
            phoneNumber: phoneNumber,
            token: token,
            imageUrl: imageUrl,
            isVerified: isVerified,
            userType:userType,);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        json['id'],
        json['name'],
        json['email'],
        json['phoneNumber'],
        json['token'],
        json['imageUrl'],
        json['isVerified'],
        json['userType'],
       );
  }

  Map<String, dynamic> toMap(User user) {
    return {
      "id": user.id,
      "name": user.name,
      "email": user.email,
      "phoneNumber": user.phoneNumber,
      "token": user.token,
      "imageUrl": user.imageUrl,
      "isVerified": user.isVerified,
    };
  }
}
