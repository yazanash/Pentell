import '../../models/entities/user_profile.dart';

class UserProfileModel extends UserProfile {
  UserProfileModel({
    required super.id,
    required super.userId,
    required super.birthDay,
    required super.name,
    required super.address,
    required super.ceo,
    required super.channel,
    required super.courses,
    required super.imageUrl,
    required super.followingCount,
    required super.followersCount,
    required super.followers,
    required super.following,
    required super.org_ex,
  });
  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
        id: json['id'],
        userId: json['userId'],
        birthDay: json['birthDay'],
        name: json['name'],
        address: json['address'],
        imageUrl: json['imageUrl'],
        ceo: json['ceo'],
        channel: json['channel'],
        courses: json['courses'],
        followingCount: json['followingCount'],
        followersCount: json['followersCount'],
        followers: json['followers'],
        following: json['following'],
        org_ex: json['org_ex']);
  }

  Map<String, dynamic> toMap(UserProfile profile) {
    return {
      "id": profile.id,
      "userId": profile.userId,
      "name": profile.name,
      "birthDay": profile.birthDay,
      "address": profile.address,
      "ceo": profile.ceo,
      "channel": profile.channel,
      'imageUrl': profile.imageUrl,
      "courses": profile.courses,
      "followingCount": profile.followingCount,
      "followersCount": profile.followersCount,
      "followers": profile.followers,
      "following": profile.following,
      "org_ex": profile.org_ex,
    };
  }
}
