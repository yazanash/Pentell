import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/splash.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/homePage.dart';
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
      title: 'Pentelligence',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // home: LobbyPage(),
      // home: SplashWidget(userBox:di.userBox),
      home: HomePage(),
    );
  }
}
