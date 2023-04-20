import 'package:flutter/material.dart';
import 'package:pentelligence/core/popups/message_or_poll_popup.dart';
import 'package:pentelligence/core/utilities/timeline_widget.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeLineWidget(children: [],),
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
            onPressed: () {},
            mini: true,
          ),
        ],
      ),
    );
  }
}
