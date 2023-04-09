import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';

class BoardPanal extends StatelessWidget {
  const BoardPanal({Key? key, required this.profile}) : super(key: key);
  final UserProfile profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //  img
          ProfileImage(
            url: profile.imageUrl,
            size: 100,
            isTrusted: false,
            background: Colors.blue,
            padding: 8,
            // borderColor: Colors.blue,
          ),
          //  userName
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              profile.name,
              style: theme.textTheme.headline6?.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Followers",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    profile.followersCount.toString(),
                    style: theme.textTheme.bodyLarge
                        ?.copyWith(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Following",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    profile.followingCount.toString(),
                    style: theme.textTheme.bodyLarge
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Courses',
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '500',
                    style: theme.textTheme.bodyLarge
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
