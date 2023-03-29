import 'package:flutter/widgets.dart';
import 'package:timelines/timelines.dart';

class CourseMap extends StatelessWidget {
  const CourseMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Timeline.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container();
        },
      ),
    );
  }
}
