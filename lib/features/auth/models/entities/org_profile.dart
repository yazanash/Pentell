import 'package:pentelligence/features/auth/models/entities/profile.dart';

class OrgProfile extends Profile {
  final String ceo;
  final List<Object> channels;
  final List<Object> courses;
  final Map<Profile, Object> employee;
  final List<Object> roles;
  // final List<Profile> teachers;

  OrgProfile({
    required super.id,
    required super.userId,
    required super.birthDay,
    required super.name,
    required super.imageUrl,
    required super.followingCount,
    required super.followersCount,
    required super.address,
    required super.followers,
    required super.following,
    super.categories,
    required this.ceo,
    required this.channels,
    required this.courses,
    required this.employee,
    // required this.teachers,
    required this.roles,
  });
}
