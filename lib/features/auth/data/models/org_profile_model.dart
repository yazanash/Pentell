import 'package:pentelligence/features/auth/models/entities/org_profile.dart';

class OrgProfileModel extends OrgProfile {
  OrgProfileModel(
      {
      required super.id,
      required super.name,
      required super.email,
      required super.phoneNumber,
      required super.address,
      required super.ceo,
      required super.channels,
      required super.courses,
       required super.imageUrl,
       required super.followingCount,
       required super.followersCount,
       required super.followers,
       required super.following,
      required super.employee,
      required super.teachers,
      required super.roles});

      
  factory OrgProfileModel.fromJson(Map<String, dynamic> json) {
    return OrgProfileModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        address: json['address'],
        imageUrl: json['imageUrl'],
        ceo: json['ceo'],
        channels: json['channels'],
        courses: json['courses'],
        employee: json['employee'],
        teachers: json['teachers'],
        roles: json['roles'],
      followingCount:json['followingCount'],
      followersCount:json['followersCount'],
      followers:json['followers'],
      following:json['following']
        );
        
  }

  Map<String, dynamic> toMap(OrgProfile profile) {
    return {
      'id': profile.id,
      'name': profile.name,
      'email': profile.email,
      'phoneNumber': profile.phoneNumber,
      'address': profile.address,
      'ceo': profile.ceo,
      'channels': profile.channels,
      'imageUrl':profile.imageUrl,
      'courses': profile.courses,
      'employee': profile.employee,
      'followingCount':profile.followingCount,
      'followersCount':profile.followersCount,
      'followers':profile.followers,
      'following':profile.following,
      'teachers': profile.teachers,
      'roles': profile.roles
    };
  }
}
