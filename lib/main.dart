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

