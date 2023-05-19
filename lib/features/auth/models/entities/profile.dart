import 'package:equatable/equatable.dart';
import 'package:pentelligence/features/course/models/entities/categories.dart';

class Profile extends Equatable {
  final String? id;
  final String userId;
  final String name;
  final DateTime birthDay;
  final String address;
  final String imageUrl;
  final int followingCount;
  final int followersCount;
  final List<Profile>? followers;
  final List<Profile>? following;
  final List<Category?>? categories;
  Profile({
    this.id,
    required this.userId,
    required this.name,
    required this.imageUrl,
    required this.birthDay,
    this.categories,
    this.followingCount = 0,
    this.followersCount = 0,
    this.followers,
    this.following,
    required this.address,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
      ];
}
