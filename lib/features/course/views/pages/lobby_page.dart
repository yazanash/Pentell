import 'package:flutter/material.dart';
import 'package:pentelligence/core/popups/message_or_poll_popup.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/core/popups/tesk_popup.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
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
            title: Text('CourseName'),
            bottom: TabBar(
              tabs: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('News'),
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
              for (int i = 0; i < 5; i++) UserTile(),
            ]),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => MessageOrPoll(),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
