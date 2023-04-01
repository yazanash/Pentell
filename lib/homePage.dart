import 'package:flutter/material.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/features/connections/views/pages/profile_page.dart';
import 'package:pentelligence/features/course/views/pages/board_page.dart';
import 'package:pentelligence/features/course/views/pages/courses_page.dart';
import 'package:pentelligence/features/course/views/pages/lobby_page.dart';
import 'package:pentelligence/features/course/views/pages/more_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int index = 0;

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
                  builder: (c) {
                    return Popup(
                        imgAsset: 'imgAsset',
                        description: 'description',
                        positiveAction: () {},
                        negativeAction: () {});
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
      bottomNavigationBar: NavigationBar(
        height: 75,
        onDestinationSelected: (value) {
          //
        },
        selectedIndex: index,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.dashboard), label: 'Board'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'more'),
        ],
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: <Widget>[
        const CoursesPage(isRtl: false),
        const BoardPage(),
        ProfilePage(),
        const MorePage(),
      ][index],
    );
  }
}
