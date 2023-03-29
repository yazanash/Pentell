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
            bottom: const TabBar(
          tabs: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Mails'),
            ),
            Text('Members'),
          ],
        )),
        body: TabBarView(
          children: [
            const TasksTab(),
            Container(),
            MembersTab(members: []),
          ],
        ),
      ),
    );
  }
}
