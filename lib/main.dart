import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/themes/dark_theme.dart';
import 'package:pentelligence/core/themes/themes.dart';
import 'package:pentelligence/core/utilities/plan_widget.dart';
import 'package:pentelligence/core/utilities/splash.dart';
import 'package:pentelligence/features/auth/views/pages/authpage.dart';
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/features/course/views/provider/courses_state.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_version_cast.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_version_info.dart';
import 'package:pentelligence/features/dashboard/views/pages/my_courses.dart';
import 'package:pentelligence/features/dashboard/views/provider/chapterstate.dart';
import 'package:pentelligence/homePage.dart';
import 'package:pentelligence/main_state.dart';
import 'package:provider/provider.dart';
import 'injection_dependancy.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainState>(
          create: (context) => MainState(),
        ),
        ChangeNotifierProvider<ChaptersState>(
          create: (context) => ChaptersState(),
        ),
        ChangeNotifierProvider<AuthState>(
          create: (context) => AuthState(),
        ),
      ],
      builder: (context, child) {
        // var theme = Provider.of<MainState>(context).
        return MaterialApp(
          title: 'Pentelligence',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: Provider.of<MainState>(context).theme == ThemeType.light
              ? ThemeMode.light
              : ThemeMode.dark,

          // home: LobbyPage(),a
          // home: SplashWidget(userBox:di.userBox),
          home: child,
        );
      },
      // child: MyCourses(),
      // child: SplashWidget(userBox:di.userBox),
      // child: PlansPage(),
      child: HomePage(),
    );
  }
}
