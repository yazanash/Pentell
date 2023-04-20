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
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (cx, index) {
          if (index % 2 == 0) {
            return LobbyMessage();
          } else {
            return LobbyPoll();
          }
        },
        separatorBuilder: (cx, index) {
          return Container();
        },
      ),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: [
          FloatingActionButton(
            heroTag: '1',
            backgroundColor: Colors.green,
            mini: true,
            onPressed: () {
              showDialog<String>(
                context: context,
                builder: (_) => MessageOrPoll(),
              );
            },
            child: Icon(Icons.message_outlined),
          ),
          FloatingActionButton(
            heroTag: '2',
            backgroundColor: Colors.pink,
            child: Icon(Icons.poll_outlined),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (c) => MapPopup(
                        callback: (val) {},
                      ));
            },
            mini: true,
          ),
        ],
      ),
    );
  }
}
