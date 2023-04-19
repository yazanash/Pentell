import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/dashboard/views/widgets/action_card.dart';
import 'package:pentelligence/features/dashboard/views/widgets/statistics_card.dart';

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

class BoardPanal2 extends StatelessWidget {
  const BoardPanal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      color: theme.colorScheme.onSecondaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'buisness name',
                style: theme.textTheme.headline2,
              ),
            ),
            Card(
              color: theme.colorScheme.surfaceVariant,
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('average stats'),
                        Text(
                          '+29%',
                          style: theme.textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Show All'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: StatCard()),
                Expanded(child: StatCard()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: StatCard()),
                Expanded(child: StatCard()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
