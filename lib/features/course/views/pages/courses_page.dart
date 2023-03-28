import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/course/views/widgets/course_widget.dart';
import 'package:pentelligence/features/course/views/widgets/institute_ad.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key, required this.isRtl}) : super(key: key);
  final bool isRtl;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 10),
      itemCount: 5 + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return SizedBox(
            height: 110,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < 5; i++) InstituteAd(),
              ],
            ),
          );
        }
        return CourseWidget(isRtl: isRtl);
      },
      separatorBuilder: (context, index) {
        if (index == 0) {
          return SizedBox(height: 5);
        }
        return SizedBox();
      },
    );
  }
}
