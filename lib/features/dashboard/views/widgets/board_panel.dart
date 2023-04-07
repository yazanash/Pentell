import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';

class BoardPanal extends StatelessWidget {
  const BoardPanal({Key? key, required this.profile}) : super(key: key);
  final UserProfile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(8.0),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          //  first row {img, name, followers}
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileImage(
                url: profile.imageUrl,
                size: 75,
                isTrusted: false,
                background: Colors.blue,
                padding: 8,
                // borderColor: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                      child: Text(
                        profile.name,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              const Text(
                                "Followers",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                profile.followersCount.toString(),
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            children: [
                              const Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                profile.followingCount.toString(),
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.blue),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('RATING'),
                  Text('5.0'),
                ],
              ),
              Column(
                children: [
                  Text('PLAN'),
                  Text('basic'),
                ],
              ),
              Column(
                children: [
                  Text('EMPLOY'),
                  Text('5'),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('asd'),
            ],
          ),
        ],
      ),
    );
  }
}
