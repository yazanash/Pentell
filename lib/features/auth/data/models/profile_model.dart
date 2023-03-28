import 'package:pentelligence/features/auth/models/entities/profile.dart';

import '../../models/entities/user.dart';

class ProfileModel extends Profile {
  ProfileModel(String id, String name, String email, String phoneNumber,
      String address, String imageUrl,
      int followingCount,
      int followersCount,
      List<Profile> followers,
      List<Profile> following,
      
      )
      : super(
          id: id,
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          address: address,
          imageUrl: imageUrl,
          followingCount:followingCount,
          followersCount:followersCount,
          followers:followers,
          following:following
        );

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      json['id'],
      json['name'], 
      json['email'],
      json['phoneNumber'], 
      json['address'], 
      json['imageUrl'],
      json['followingCount'],
      json['followersCount'],
      json['followers'],
      json['following']);
  }

  Map<String, dynamic> toMap(Profile profile) {
    return {
      'id': profile.id,
      'name': profile.name,
      'email': profile.email,
      'phoneNumber': profile.phoneNumber,
      'address': profile.address,
      'imageUrl':profile.imageUrl,
      'followingCount':profile.followingCount,
      'followersCount':profile.followersCount,
      'followers':profile.followers,
      'following':profile.following
    };
  }
}
