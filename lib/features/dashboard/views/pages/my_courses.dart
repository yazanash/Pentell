import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/features/dashboard/views/widgets/course_card.dart';
import 'package:pentelligence/features/dashboard/views/widgets/tab_btn.dart';

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
              const TapBtn(
                title: "Add New Course",
              ),
              const TapBtn(
                title: "Draft Course",
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
              Column(
                children: const [
                  CourseCard(),
                  CourseCard(),
                ],
              )
            ],
          )),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.3,
          builder: (context, myController) {
            return Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TapBtn(title: "Republish"),
            );
          },
        )
      ]),
    );
  }
}
