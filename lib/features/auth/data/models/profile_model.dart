import 'package:pentelligence/features/auth/models/entities/profile.dart';

class ProfileModel extends Profile {
  ProfileModel({
    required String id,
    required String userId,
    required String name,
    required DateTime birthDay,
    required String address,
    required String imageUrl,
    required int followingCount,
    required int followersCount,
    required List<Profile> followers,
    required List<Profile> following,
    super.categories,
  }) : super(
            id: id,
            userId: userId,
            name: name,
            birthDay: birthDay,
            address: address,
            imageUrl: imageUrl,
            followingCount: followingCount,
            followersCount: followersCount,
            followers: followers,
            following: following);

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'],
      userId: json['userId'],
      name: json['name'],
      birthDay: json['birthDay'],
      address: json['address'],
      imageUrl: json['imageUrl'],
      followingCount: json['followingCount'],
      followersCount: json['followersCount'],
      followers: json['followers'],
      following: json['following'],
    );
  }

  Map<String, dynamic> toMap(Profile profile) {
    return {
      'id': profile.id,
      'userId': profile.userId,
      'birthDay': profile.birthDay,
      'name': profile.name,
      'address': profile.address,
      'imageUrl': profile.imageUrl,
      'followingCount': profile.followingCount,
      'followersCount': profile.followersCount,
      'followers': profile.followers,
      'following': profile.following,
    };
  }
}
