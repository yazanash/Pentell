import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/connections/views/widgets/lobby_card.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      // color: Colors.grey,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Lobbies",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      LobbyCard(
                        name: "name",
                      ),
                      LobbyCard(
                        name: "name",
                      ),
                      LobbyCard(
                        name: "name",
                      ),
                      LobbyCard(
                        name: "name",
                      ),
                      LobbyCard(
                        name: "name",
                      ),
                      LobbyCard(
                        name: "name",
                      ),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Actions",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 150,
                child: GridView.count(
                  childAspectRatio: 1.25,
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    DashboardButton(ratio: 2),
                    DashboardButton(ratio: 2),
                    DashboardButton(ratio: 2),
                    DashboardButton(ratio: 2),
                    DashboardButton(ratio: 2),
                    DashboardButton(ratio: 2),
                    DashboardButton(ratio: 2),
                    DashboardButton(ratio: 2),
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
