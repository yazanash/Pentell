import 'package:pentelligence/features/auth/models/entities/profile.dart';

import '../../models/entities/user.dart';

class ProfileModel extends Profile {
  ProfileModel(
    int id,
    String name,
    String email,
    String phoneNumber,
    String address,
    List<User> employee,
    List<User> teachers,
    List<Object> gallery,
    List<User> nerds,
  ) : super(
          id: id,
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          address: address,
          employee: employee,
          teachers: teachers,
          gallery: gallery,
          nerds: nerds,
        );

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
         json['id'],
         json['name'],
         json['email'],
         json['phoneNumber'],
         json['address'],
         json['employee'],
         json['teachers'],
         json['gallery'],
         json['nerds']);
  }

  Map<String, dynamic> toMap(Profile profile) {
    return {
      'id': profile.id,
      'name': profile.name,
      'email': profile.email,
      'phoneNumber': profile.phoneNumber,
      'address': profile.address,
      'employee': profile.employee,
      'teachers': profile.teachers,
      'gallery': profile.gallery,
      'nerds': profile.nerds,
    };
  }
}
