import 'package:pentelligence/features/auth/models/entities/profile.dart';

class OrgProfile extends Profile {
  
  final String ceo;
  final List<Object> channels;
  final List<Object> courses;
  final Map<Profile,Object> employee;
  final List<Profile> teachers;

  final List<Object> roles;
  OrgProfile(
      {
        required super.id,
        required super.name,
        required super.email,
        required super.phoneNumber,
        required super.imageUrl,
        required super.followingCount,
        required super.followersCount,
        required super.address,
        required super.followers,
        required super.following,
        required this.ceo,
        required this.channels,
        required this.courses,
        required this.employee,
        required this.teachers,
        required this.roles,
      })
      ;
}
