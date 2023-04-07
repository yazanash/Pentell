
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';

class UserProfile extends Profile {
  final String? ceo;
  final List<Profile>? channel;
  final List<Object>? courses;
  

  final Map<OrgProfile, Object>? org_ex;

  UserProfile({
    required super.id,
    required super.name,
    required super.email,
    required super.phoneNumber,
    required super.imageUrl,
    required super.address,
     this.ceo,
     this.channel,
     this.courses,
     required super.followingCount,
     required super.followersCount,
     super.followers,
     super.following,
     this.org_ex,
  }) : super();
}
