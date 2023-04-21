import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileImage(
                url: profile.imageUrl,
                size: 80,
                borderWidth: 0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile.name,
                      style: theme.textTheme.headline2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue)),
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                // style: theme.textTheme.headline3,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
