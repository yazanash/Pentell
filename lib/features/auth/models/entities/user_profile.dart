import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';

class UserProfile extends Profile {
  
  final String ceo;
  final List<Profile> channel;
  final List<Object> courses;
  final List<Profile> followers;
  final List<Profile> following;
  final Map<OrgProfile,Object> org_ex;
  
  UserProfile(
      {
        required super.id,
        required super.name,
        required super.email,
        required super.phoneNumber,
        required super.address,
        required this.ceo,
        required this.channel,
        required this.courses,
        required this.followers,
        required this.following,
        required this.org_ex,
      })
      : super();
}
