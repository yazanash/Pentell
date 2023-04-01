import 'package:flutter/material.dart';
import 'package:pentelligence/features/course/views/pages/members_tab.dart';
import 'package:pentelligence/features/course/views/pages/tasks_tab.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            title: Text('Lobby'),
            bottom: TabBar(
              tabs: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('Mails'),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('Members'),
                ),
              ],
            )),
        body: TabBarView(
          children: [
            const TasksTab(),
            MembersTab(members: [
              for (int i = 0; i < 5; i++) Text('data $i'),
            ]),
          ],
        ),
      ),
    );
  }
}
