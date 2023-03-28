

class Profile {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String address;
  final String imageUrl;
  final int followingCount;
  final int followersCount;
  final List<Profile>? followers;
  final List<Profile>? following;

  Profile(
      {required this.id,
      required this.name,
      required this.email,
      required this.imageUrl,
      required this.phoneNumber,
      required this.followingCount,
      required this.followersCount,
       this.followers,
       this.following,
      required this.address});
}
