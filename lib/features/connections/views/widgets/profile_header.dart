import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/connections/views/widgets/com_card.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';

class ProfileHeader extends StatelessWidget {
  final UserProfile profile;
  final VoidCallback? follow, share, more, onPressImg;
  final bool isFollowed;
  final bool isTrust;
  ProfileHeader({
    required this.profile,
    this.follow,
    this.share,
    this.more,
    this.onPressImg,
    this.isFollowed = false,
    this.isTrust = false,
  });
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
              Hero(
                tag: 'p',
                child: ProfileImage(
                  onPressed: onPressImg,
                  url: profile.imageUrl,
                  size: 80,
                  borderWidth: 0,
                  isTrusted: true,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        if (isTrust)
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue),
                            height: 20,
                            width: 20,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "lib/assets/logo3.png",
                                width: 10,
                                height: 10,
                              ),
                            ),
                          ),
                        Text(
                          profile.name,
                          style: theme.textTheme.headline2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'profile.email',
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
          Bio(
              color: Colors.black,
              alignment: CrossAxisAlignment.start,
              fontSize: 20,
              description:
                  "description description description description description description description description description description description description description description "),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: follow,
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        isFollowed ? Colors.grey : Colors.blue),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: isFollowed ? Text('UnFollow') : Text("Follow"),
                ),
              ),
              TextButton(onPressed: share, child: Icon(Icons.share)),
              TextButton(onPressed: more, child: Icon(Icons.more_horiz))
            ],
          ),
        ],
      ),
    );
  }
}
