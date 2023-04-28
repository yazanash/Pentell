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
    final theme = Theme.of(context);
    return ListView.builder(
      // key: Provider.of<CoursesPageState>(context).animatedListKey,
      // initialItemCount: 20,
      itemCount: 3,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Container(
            color: theme.colorScheme.surface,
            height: 120,
            margin: const EdgeInsets.only(bottom: 5),
            child: ListView.builder(
                itemCount: 2,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return InstituteAd(
                    url: "lib/assets/i1.jpg",
                    onPressed: () {},
                  );
                }),
          );
        }
        return CourseWidget(isRtl: isRtl, url: "lib/assets/i1.jpg");
      },
    );
  }
}
