import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/core/themes/themes.dart';
import 'package:pentelligence/features/auth/views/pages/authpage.dart';
import 'package:pentelligence/features/connections/views/pages/profile_page.dart';
import 'package:pentelligence/features/course/views/pages/course_info.dart';
import 'package:pentelligence/features/course/views/pages/notification_page.dart';
import 'package:pentelligence/features/course/views/provider/courses_state.dart';
import 'package:pentelligence/features/dashboard/views/pages/board_page.dart';
import 'package:pentelligence/features/course/views/pages/courses_page.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/features/course/views/pages/test_page.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_chapter.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_course.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_version_info.dart';
import 'package:pentelligence/features/dashboard/views/pages/my_courses.dart';
import 'package:pentelligence/features/dashboard/views/pages/employees.dart';
import 'package:pentelligence/features/dashboard/views/pages/org_info.dart';
import 'package:pentelligence/features/dashboard/views/pages/user_board.dart';
import 'package:pentelligence/features/dashboard/views/pages/user_info.dart';
import 'package:pentelligence/main_state.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            splashRadius: 25,
            onPressed: () {
              if (Provider.of<MainState>(context, listen: false).theme ==
                  ThemeType.light)
                Provider.of<MainState>(context, listen: false)
                    .setTheme(ThemeType.dark);
              else
                Provider.of<MainState>(context, listen: false)
                    .setTheme(ThemeType.light);
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            splashRadius: 25,
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const LobbyPage(),
              //   ),
              // );

              showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (c) {
                    return Popup(
                        icon: Icon(
                          Icons.warning_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        title: 'title',
                        body: [Text('$currentPage')],
                        popColor: Colors.red,
                        description:
                            'description description description description description description',
                        // positiveAction: Text('no'),
                        negativeAction: Text('ok'));
                  });
            },
          ),
        ],
        title: Text(
          'Pentelligence',
          style: theme.textTheme.headline1,
          // style: TextStyle(color: Color(0xFFAB9C6F)),
        ),

        // backgroundColor: Color(0xffd2d2d2),
        elevation: 0,
      ),
      bottomNavigationBar: Consumer<MainState>(
        builder: (_, state, child) => NavigationBar(
          height: 75,
          onDestinationSelected: (index) {
            // Provider.of<MainState>(context, listen: false).setIndex(index);
            state.setIndex(index);
          },
          selectedIndex: state.index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.dashboard), label: 'Board'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            // NavigationDestination(icon: Icon(Icons.more_horiz), label: 'more'),
          ],
        ),
      ),
      body: Consumer<MainState>(
        builder: (context, state, child) {
          return <Widget>[
            ChangeNotifierProvider(
              create: (context) => CoursesPageState(),
              child: const CoursesPage(isRtl: false),
            ),
            const BoardPage(),
            ProfilePage(),
            // LobbyPage(),
            // const TestPage(),
            // EmployeesPage(),
          ][state.index];
        },
      ),
    );
  }
}
