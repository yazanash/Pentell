import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/popups/message_or_poll_popup.dart';
import 'package:pentelligence/core/popups/popup.dart';
import 'package:pentelligence/core/popups/tesk_popup.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/course/views/pages/members_tab.dart';
import 'package:pentelligence/features/course/views/pages/tasks_tab.dart';

class LobbyPage extends StatefulWidget {
  LobbyPage({Key? key}) : super(key: key);

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  int index = 0;
  late final TabController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('CourseName'),
          bottom: TabBar(
            controller: controller,
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
        controller: controller,
        children: [
          const TasksTab(),
          MembersTab(members: [
            for (int i = 0; i < 5; i++) UserTile(),
          ]),
        ],
      ),
    );
  }
}
