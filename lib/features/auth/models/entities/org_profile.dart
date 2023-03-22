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
        required super.address,
        required this.ceo,
        required this.channels,
        required this.courses,
        required this.employee,
        required this.teachers,
        required this.roles,
      })
      ;
}
