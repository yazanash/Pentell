import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/features/connections/views/pages/profile_page.dart';
import 'package:pentelligence/features/course/views/pages/board_page.dart';
import 'package:pentelligence/features/course/views/pages/courses_page.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/features/course/views/pages/settings_page.dart';
import 'package:pentelligence/features/dashboard/views/pages/employees.dart';
import 'package:pentelligence/main_state.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
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
                  barrierColor: Colors.white.withOpacity(0.5),
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
            icon: const Icon(Icons.notifications),
          ),
        ],
        title: Text(
          'Demo',
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
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(icon: Icon(Icons.dashboard), label: 'Board'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(icon: Icon(Icons.more_horiz), label: 'more'),
          ],
        ),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Consumer<MainState>(
        builder: (context, state, child) {
          return <Widget>[
            const CoursesPage(isRtl: false),
            const BoardPage(),
            ProfilePage(),
            // const MorePage(),
            EmployeesPage(),
            
          ][state.index];
        },
      ),
    );
  }
}
