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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff0E9A9F), Color(0xff27DCAB)],
                begin: Alignment.topCenter,
                transform: GradientRotation(270),
                end: Alignment.bottomCenter)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child:
                  Image.asset("lib/assets/logo3.png", width: 150, height: 150),
            ),
            Positioned(
              bottom: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "From",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TRIOVERSE",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
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
          MaterialPageRoute(builder: ((context) => AuthPage())));
    }
  }

  Future<void> check(context) async {
    await Future.delayed(const Duration(seconds: 3));
    checkAuth(context);
  }
}
