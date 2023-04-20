import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/course/views/provider/courses_state.dart';
import 'package:pentelligence/features/course/views/widgets/course_widget.dart';
import 'package:pentelligence/features/course/views/widgets/institute_ad.dart';
import 'package:provider/provider.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key, required this.isRtl}) : super(key: key);
  final bool isRtl;

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: Provider.of<CoursesPageState>(context).animatedListKey,
      initialItemCount: 20,
      itemBuilder: (context, index, anime) {
        if (index == 0) {
          return SizeTransition(
            key: UniqueKey(),
            sizeFactor: anime,
            child: Container(
              // color: Colors.white,
              height: 150,
              child: ListView.builder(
                itemCount: 6,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => InstituteAd(
                  onPressed: () {},
                ),
              ),
            ),
          );
        }
        return SizeTransition(
          key: UniqueKey(),
          sizeFactor: anime,
          child: CourseWidget(isRtl: isRtl),
        );
      },
    );
  }
}
