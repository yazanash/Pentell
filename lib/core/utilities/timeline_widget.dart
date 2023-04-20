import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({
    Key? key,
    required this.children,
    this.dotIndicator = const DotIndicator(
      size: 20,
      color: Colors.green,
      child: Icon(
        Icons.route_rounded,
        color: Colors.white,
      ),
    ),
    this.indicatorPos = 0.5,
    this.timelineOffset = 0.05,
  }) : super(key: key);

  final List<Widget> children;
  final Widget dotIndicator;
  final double indicatorPos, timelineOffset;

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder(
        itemCount: children.length,
        contentsAlign: ContentsAlign.basic,
        indicatorBuilder: (_, index) {
          return dotIndicator;
        },
        startConnectorBuilder: (_, index) {
          if (index > 0) return Connector.solidLine();
        },
        endConnectorBuilder: (_, index) {
          if (index < children.length - 1) return Connector.solidLine();
        },
        nodePositionBuilder: (c, index) {
          return timelineOffset;
        },
        indicatorPositionBuilder: (context, index) {
          return indicatorPos;
        },
        contentsBuilder: (context, index) {
          return children[index];
        },
      ),
    );
  }
}
