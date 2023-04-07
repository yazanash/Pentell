import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/features/dashboard/views/widgets/course_card.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data")),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            CourseCard(),
            CourseCard(),
            CourseCard(),
            CourseCard(),
            CourseCard(),
            CourseCard(),
          ],
        )),
      ),
    );
  }
}
