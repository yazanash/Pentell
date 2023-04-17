import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/views/pages/authpage.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/connections/views/widgets/profile_header.dart';
import 'package:pentelligence/homePage.dart';

import '../../features/connections/views/widgets/lobby_card.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key, required this.userBox}) : super(key: key);
  final Box<Map<String, dynamic>> userBox;

  @override
  Widget build(BuildContext context) {
    check(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Image.asset("lib/assets/logo3.png",
                   width: 120, height: 120),
            ),
            Positioned(
              bottom: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        "From",
                        style: theme.textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TRIOVERSE",
                        style: theme.textTheme.headline2,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> checkAuth(context) async {
    if (userBox.containsKey('token')) {
      // Navigator.of(context).pushReplacementNamed("home");
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => HomePage())));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => HomePage())));
    }
  }

  Future<void> check(context) async {
    await Future.delayed(const Duration(seconds: 3));
    checkAuth(context);
  }
}
