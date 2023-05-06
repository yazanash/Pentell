import 'package:flutter/material.dart';
import 'package:pentelligence/core/popups/map_popup.dart';
import 'package:pentelligence/core/popups/message_or_poll_popup.dart';
import 'package:pentelligence/core/utilities/timeline_widget.dart';
import 'package:pentelligence/features/dashboard/views/widgets/lobby_message.dart';
import 'package:pentelligence/features/dashboard/views/widgets/lobby_poll.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeLineWidget(
        children: [],
      ),
    );
  }
}
