import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            bottom: TabBar(
          tabs: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Mails'),
            ),
            Text('Members'),
          ],
        )),
        body: TabBarView(
          children: [
            TasksTab(),
            MembersTab(members: []),
          ],
        ),
      ),
    );
  }
}
