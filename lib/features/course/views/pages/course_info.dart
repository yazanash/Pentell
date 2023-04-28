import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/core/utilities/review_tile.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/views/widgets/course_header.dart';
import 'package:pentelligence/features/course/views/widgets/info_card.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';

class CourseInfoPage extends StatelessWidget {
  const CourseInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          CourseHeader(institute: "institute"),
        ]),
      ),
    );
  }
}
