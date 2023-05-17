import 'package:flutter/material.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_course.dart';
import 'package:pentelligence/features/dashboard/views/pages/pending_courses.dart';
import 'package:pentelligence/features/dashboard/views/provider/my_courses_state.dart';
import 'package:pentelligence/features/dashboard/views/widgets/course_card.dart';
import 'package:pentelligence/features/dashboard/views/widgets/tab_btn.dart';
import 'package:pentelligence/features/dashboard/views/widgets/versions_list.dart';
import 'package:provider/provider.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Manage Courses")),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TapBtn(
                title: "Add New Course",
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => AddCourse()));
                },
              ),
              TapBtn(
                title: "Pending Courses",
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => PendingCoursesPage()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Courses List",
                  style: theme.textTheme.headline2,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ChangeNotifierProvider<MyCoursesState>(
                create: (context) => MyCoursesState(),
                builder: (c, child) {
                  return Column(
                    children: [
                      CourseCard(),
                      CourseCard(),
                    ],
                  );
                },
              )
            ],
          )),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.3,
          maxChildSize: 1,
          minChildSize: 0,
          snap: true,
          builder: (context, myController) {
            return VersionsList(
              controller: myController,
            );
          },
        )
      ]),
    );
  }
}
