import 'package:pentelligence/features/auth/models/entities/org_profile.dart';

class OrgProfileModel extends OrgProfile {
  OrgProfileModel(
      {required super.id,
      required super.name,
      required super.userId,
      required super.birthDay,
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
      super.categories,
      // required super.teachers,
      required super.roles});

  factory OrgProfileModel.fromJson(Map<String, dynamic> json) {
    return OrgProfileModel(
        id: json['id'],
        userId: json['userId'],
        name: json['name'],
        birthDay: json['birthDay'],
        address: json['address'],
        imageUrl: json['imageUrl'],
        ceo: json['ceo'],
        channels: json['channels'],
        courses: json['courses'],
        employee: json['employee'],
        // teachers: json['teachers'],
        roles: json['roles'],
        followingCount: json['followingCount'],
        followersCount: json['followersCount'],
        followers: json['followers'],
        following: json['following']);
  }

  Map<String, dynamic> toMap(OrgProfile profile) {
    return {
      'id': profile.id,
      'userId': profile.userId,
      'name': profile.name,
      'birthDay': profile.birthDay,
      'address': profile.address,
      'ceo': profile.ceo,
      'channels': profile.channels,
      'imageUrl': profile.imageUrl,
      'courses': profile.courses,
      'employee': profile.employee,
      'followingCount': profile.followingCount,
      'followersCount': profile.followersCount,
      'followers': profile.followers,
      'following': profile.following,
      // 'teachers': profile.teachers,
      'roles': profile.roles,
    };
  }
}
