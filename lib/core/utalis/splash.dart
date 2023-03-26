import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key, required this.userBox}) : super(key: key);
  final Box<Map<String, dynamic>> userBox;
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3));
    checkAuth(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff0E9A9F), Color(0xff27DCAB)],
                begin: Alignment.topLeft,
                transform: GradientRotation(30),
                end: Alignment.bottomRight)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child:
                  Image.asset("lib/assets/logo3.png", width: 150, height: 150),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> checkAuth(context) async {
    if (userBox.containsKey('token')) {
      Navigator.of(context).pushReplacementNamed("home");
    }
  }
}
