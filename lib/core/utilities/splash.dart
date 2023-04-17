import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pentelligence/features/auth/views/pages/authpage.dart';
import 'package:pentelligence/homePage.dart';


class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key, required this.userBox}) : super(key: key);
  final Box<Map<String, dynamic>> userBox;
  @override
  Widget build(BuildContext context) {
    check(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff53A2BE),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Image.asset("lib/assets/logo3.png",
                  color: Colors.white, width: 150, height: 150),
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
