import 'package:pentelligence/features/auth/models/entities/profile.dart';

import '../../models/entities/user.dart';

class ProfileModel extends Profile {
  ProfileModel(
    String id,
    String name,
    String email,
    String phoneNumber,
    String address,
  ) : super(
          id: id,
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          address: address,
        );

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
         json['id'],
         json['name'],
         json['email'],
         json['phoneNumber'],
         json['address']);
  }

  Map<String, dynamic> toMap(Profile profile) {
    return {
      'id': profile.id,
      'name': profile.name,
      'email': profile.email,
      'phoneNumber': profile.phoneNumber,
      'address': profile.address,
    };
  }
}
