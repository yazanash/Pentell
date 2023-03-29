import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
          itemCount: 5,
          contentsAlign: ContentsAlign.basic,
          contentsBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.amber,
            );
          }),
    );
  }
}
