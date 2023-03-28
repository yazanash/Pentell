import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';

import '../../models/entities/user_profile.dart';

class UserProfileModel extends UserProfile {
  UserProfileModel(
      {
        required super.id,
        required super.name,
        required super.email,
        required super.phoneNumber,
        required super.address,
        required super.ceo,
        required super.channel,
        required super.courses,
        required super.imageUrl,
        required super.followingCount,
        required super.followersCount,
        required super.followers,
        required super.following,
        required super.org_ex});
  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
        id:json['id'],
        name:json['name'],
        email:json['email'],
        phoneNumber:json['phoneNumber'],
        address:json['address'],
        imageUrl:json['imageUrl'],
        ceo:json['ceo'],
        channel:json['channel'],
        courses:json['courses'],
        followingCount:json['followingCount'],
        followersCount:json['followersCount'],
        followers:json['followers'],
        following:json['following'],
         org_ex:json['org_ex']
       );
  }

  Map<String, dynamic> toMap(UserProfile profile) {
    return {
        "id":profile.id,
        "name":profile.name,
        "email":profile.email,
        "phoneNumber":profile.phoneNumber,
        "address":profile.address,
        "ceo":profile.ceo,
        "channel":profile.channel,
        'imageUrl':profile.imageUrl,
        "courses":profile.courses,
        "followingCount":profile.followingCount,
        "followersCount":profile.followersCount,
        "followers":profile.followers,
        "following":profile.following,
         "org_ex":profile.org_ex,
    };
  }
}
