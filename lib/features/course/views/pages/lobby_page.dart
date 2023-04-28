import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/popups/message_or_poll_popup.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/core/popups/tesk_popup.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/course/views/pages/members_tab.dart';
import 'package:pentelligence/features/course/views/pages/settings_tab.dart';
import 'package:pentelligence/features/course/views/pages/tasks_tab.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_version_extras.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text('CourseName'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'News'),
                Tab(text: 'Members'),
                Tab(text: 'Settings'),
              ],
            )),
        body: TabBarView(
          children: [
            const TasksTab(),
            MembersTab(
              members: [
                for (int i = 0; i < 5; i++) UserTile(),
              ],
            ),
            // SettingsTab(),
            SettingsTab(
              showBusiness: () {},
              showCourse: () {},
              
            ),
          ],
        ),
      ),
    );
  }
}
