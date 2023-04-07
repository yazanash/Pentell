import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ProfileHeader(
        profile: UserProfile(
          id: '1',
          name: "yazan abo shash",
          email: "example@gmail.com",
          phoneNumber: "0994916917",
          imageUrl: "lib/assets/logo3.png",
          address: "address",
          followingCount: 330,
          followersCount: 440,
        ),
      )
    ]);
  }
}
