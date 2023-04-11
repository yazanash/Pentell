import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/themes/themes.dart';
import 'package:pentelligence/core/utilities/splash.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/features/dashboard/views/provider/chapterstate.dart';
import 'package:pentelligence/homePage.dart';
import 'package:pentelligence/main_state.dart';
import 'package:provider/provider.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(systemNavigationBarColor: primary),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainState>(create: (context) => MainState()),
        ChangeNotifierProvider<ChaptersState>(
            create: (context) => ChaptersState()),
      ],
      builder: (context, child) {
        // var theme = Provider.of<MainState>(context).
        return MaterialApp(
          title: 'Pentelligence',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.dark,

          // home: LobbyPage(),
          // home: SplashWidget(userBox:di.userBox),
          home: child,
        );
      },
      child: HomePage(),
    );
  }
}
