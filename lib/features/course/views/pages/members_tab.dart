import 'package:flutter/material.dart';
import 'package:pentelligence/features/course/views/provider/members_tab_state.dart';
import 'package:provider/provider.dart';

class MembersTab extends StatelessWidget {
  const MembersTab({
    Key? key,
    required this.members,
  }) : super(key: key);
  final List<Widget> members;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MembersTabState>(
      create: (context) => MembersTabState(),
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          children: members,
        ),
      ),
    );
  }
}
