import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/course/views/pages/members_tab.dart';
import 'package:pentelligence/features/course/views/pages/settings_tab.dart';
import 'package:pentelligence/features/course/views/pages/tasks_tab.dart';
import 'package:pentelligence/features/course/views/provider/lobby_page_state.dart';
import 'package:provider/provider.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LobbyPageState>(
      create: (context) => LobbyPageState(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              actions: [
                IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.settings),
                ),
              ],
              title: Text('CourseName'),
              bottom: TabBar(
                tabs: [
                  Tab(text: 'News'),
                  Tab(text: 'Members'),
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
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
