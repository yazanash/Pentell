import 'package:flutter/material.dart';
import 'package:pentelligence/features/course/views/widgets/course_widget.dart';
import 'package:timelines/timelines.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder(
        itemCount: 3,
        contentsAlign: ContentsAlign.basic,
        indicatorBuilder: (_, index) {
          return DotIndicator(
            size: 40,
            color: Colors.green,
            child: Icon(
              Icons.route_rounded,
              color: Colors.white,
            ),
          );
        },
        startConnectorBuilder: (_, index) {
          if (index > 0) return Connector.solidLine();
        },
        endConnectorBuilder: (_, index) {
          if (index < 2) return Connector.solidLine();
        },
        nodePositionBuilder: (c, index) {
          return 0.05;
        },
        indicatorPositionBuilder: (context, index) {
          return 0.5;
        },
        contentsBuilder: (context, index) {
          return Container(
            // margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(left: 10),
            child: CourseWidget(
              isRtl: false,
            ),
          );
        },
      ),
    );
  }
}
