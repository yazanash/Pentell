import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/album.dart';
import 'package:pentelligence/features/connections/views/widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(
            profile: UserProfile(
              id: '1',
              name: "July ahmad",
              email: "example@gmail.com",
              phoneNumber: "0994916917",
              imageUrl: "lib/assets/u4.jpg",
              address: "address",
              followingCount: 330,
              followersCount: 440,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        // backgroundColor:
                        //     MaterialStateProperty.all<Color>(Colors.white),
                        // foregroundColor:
                        //     MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.edit_note),
                          Text(
                            "Edit Profile",
                            style: theme.textTheme.headline3,
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        // backgroundColor:
                        //     MaterialStateProperty.all<Color>(Colors.white),
                        // foregroundColor:
                        //     MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.settings),
                          Text(
                            "Settings",
                            style: theme.textTheme.headline3,
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
          const AlbumWidget()
        ],
      ),
    );
  }
}
