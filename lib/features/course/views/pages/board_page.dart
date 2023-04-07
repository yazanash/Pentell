import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/dashboard/views/widgets/board_panel.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      // color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BoardPanal(
            profile: UserProfile(
              id: '1',
              name: "yazan abo shash",
              email: "example@gmail.com",
              phoneNumber: "0994916917",
              imageUrl: "lib/assets/logo3.png",
              address: "address",
              followingCount: 330,
              followersCount: 440,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Actions",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
                    DashboardButton(ratio: 1.25),
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
