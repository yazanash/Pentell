
import 'package:pentelligence/features/auth/models/entities/org_profile.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';

class UserProfile extends Profile {
  final String? ceo;
  final List<Profile>? channel;
  final List<Object>? courses;
  

  final Map<OrgProfile, Object>? org_ex;

  UserProfile({
    required super.id,
    required super.userId,
    required super.name,
    required super.imageUrl,
    required super.address,
    required super.birthDay,
      super.categories,
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
