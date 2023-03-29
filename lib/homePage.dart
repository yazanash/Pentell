import 'package:flutter/material.dart';
import 'package:pentelligence/features/course/views/pages/courses_page.dart';
import 'package:pentelligence/features/course/views/pages/notification_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
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
          // NavigationDestination(
          //     icon: Icon(Icons.notifications_rounded), label: 'Notification'),
          NavigationDestination(icon: Icon(Icons.dashboard), label: 'Board'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'more'),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: <Widget>[
        const CoursesPage(isRtl: false),
        Container(),
        Container(),
        Container(),
      ][index],
    );
  }
}
