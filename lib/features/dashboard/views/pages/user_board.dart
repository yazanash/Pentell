import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/features/connections/views/widgets/lobby_card.dart';
import 'package:pentelligence/features/dashboard/views/widgets/action_card.dart';
import 'package:pentelligence/features/dashboard/views/widgets/user_card.dart';

import 'add_course.dart';

class UserBoard extends StatelessWidget {
  const UserBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserCard(),
          Text(
            "Active Lobbies",
            style: theme.textTheme.headline2,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            margin:const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (cx, i) {
                return LobbyCard2(
                  newMessages: 1,
                  progress: 0.5,
                  onPressed: () {},
                );
              },
            ),
          ),
          Text('Actions:', style: theme.textTheme.headline2),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ActionCard(
                      icon: Icons.menu_book_rounded,
                      color: Colors.amber,
                      desc: 'View Your success road',
                      title: 'My Courses',
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ActionCard(
                      icon: Icons.speaker_group_rounded,
                      color: Colors.purple,
                      desc: 'Courses you like',
                      title: 'Wishlist',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ActionCard(
                      icon: Icons.menu_book_rounded,
                      color: Colors.green,
                      desc: 'take care you children',
                      title: 'Family',
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ActionCard(
                      icon: Icons.speaker_group_rounded,
                      color: Colors.pink,
                      desc: 'Get free',
                      title: 'Coupons',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
