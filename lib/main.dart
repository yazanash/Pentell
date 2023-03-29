import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/homePage.dart';
=======
import 'package:pentelligence/core/utilities/splash.dart';
>>>>>>> 79df94df4af03be72e81e52a06a20c79b20dd9dd
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
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      home: LobbyPage(),
=======
      home: SplashWidget(userBox:di.userBox),
>>>>>>> 79df94df4af03be72e81e52a06a20c79b20dd9dd
    );
  }
}
