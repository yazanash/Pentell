import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:pentelligence/core/utalis/input.dart';
import 'package:pentelligence/features/auth/views/widgets/login.dart';
import 'injection_dependancy.dart' as di;

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pentell',
      theme: ThemeData(),
      home: Login(),
    );
  }
}

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
