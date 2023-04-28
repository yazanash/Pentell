import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/connections/views/widgets/com_card.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';

class ProfileHeader extends StatelessWidget {
  final UserProfile profile;
  ProfileHeader({required this.profile});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      color: theme.colorScheme.surface,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileImage(
                url: profile.imageUrl,
                size: 80,
                borderWidth: 0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      profile.name,
                      style: theme.textTheme.headline2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      profile.email,
                      style: theme.textTheme.headline3,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfCard(
                title: "Followers",
                data: profile.followersCount.toString(),
              ),
              InfCard(
                title: "Following",
                data: profile.followingCount.toString(),
              ),
              InfCard(
                title: "Rate",
                data: profile.followersCount.toString(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Text("Follow"))),
              TextButton(onPressed: () {}, child: Icon(Icons.share)),
              TextButton(onPressed: () {}, child: Icon(Icons.more_horiz))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Bio(
              color: Colors.black,
              alignment: CrossAxisAlignment.start,
              fontSize: 20,
              description:
                  "description description description description description description description description description description description description description description "),
        ],
      ),
    );
  }
}
