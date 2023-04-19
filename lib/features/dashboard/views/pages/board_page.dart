import 'package:flutter/material.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/connections/views/widgets/lobby_card.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/features/dashboard/views/widgets/action_card.dart';
import 'package:pentelligence/features/dashboard/views/widgets/board_panel.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      // padding: EdgeInsets.symmetric(horizontal: 10),
      // color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // BoardPanal(
          //   profile: UserProfile(
          //     id: '1',
          //     name: "yazan abo shash",
          //     email: "example@gmail.com",
          //     phoneNumber: "0994916917",
          //     imageUrl: "lib/assets/logo3.png",
          //     address: "address",
          //     followingCount: 330,
          //     followersCount: 440,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Active Lobbies',
              style: theme.textTheme.headline1,
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (cx, i) {
                return LobbyCard2();
              },
            ),
          ),
          BoardPanal2(),
          Container(
            margin: EdgeInsets.only(bottom: 15.0, top: 15.0, left: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              'Actions:',
              style: theme.textTheme.headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: ActionCard()),
                  Expanded(child: ActionCard()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: ActionCard()),
                  Expanded(child: ActionCard()),
                ],
              ),
              ActionCard(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "idk",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DashboardButton(
                      ratio: 1.25,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => LobbyPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
