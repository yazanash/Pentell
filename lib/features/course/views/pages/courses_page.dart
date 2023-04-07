import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/course/views/widgets/course_widget.dart';
import 'package:pentelligence/features/course/views/widgets/institute_ad.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key, required this.isRtl}) : super(key: key);
  final bool isRtl;

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      initialItemCount: 1,
      itemBuilder: (context, index, anime) {
        if (index == 0) {
          return Container(
            // color: Colors.white,
            height: 110,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < 6; i++) InstituteAd(),
              ],
            ),
          );
        }
        return CourseWidget(isRtl: isRtl);
      },
    );
  }
}
