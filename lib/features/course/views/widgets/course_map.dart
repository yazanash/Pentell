import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/timeline_widget.dart';

class CourseMap extends StatelessWidget {
  const CourseMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TimeLineWidget(),
    );
  }
}
