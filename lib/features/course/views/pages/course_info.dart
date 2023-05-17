import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/core/utilities/review_tile.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/views/pages/reviews_tab.dart';
import 'package:pentelligence/features/course/views/provider/course_info_state.dart';
import 'package:pentelligence/features/course/views/widgets/course_header.dart';
import 'package:pentelligence/features/course/views/widgets/course_info.dart';
import 'package:pentelligence/features/course/views/widgets/course_map.dart';
import 'package:pentelligence/features/course/views/widgets/info_card.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/dashboard/views/pages/add_version_map.dart';
import 'package:provider/provider.dart';

import '../../../connections/views/pages/cast_tab.dart';
import '../../../connections/views/pages/courses_tab.dart';

class CourseInfoPage extends StatelessWidget {
  const CourseInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ChangeNotifierProvider<CourseInfoState>(
      create: (c) => CourseInfoState(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Info"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            CourseHeader(institute: "institute"),
            DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(
                children: [
                  Container(
                    color: theme.colorScheme.background,
                    child: TabBar(
                      indicatorColor: theme.colorScheme.primary,
                      tabs: [
                        SizedBox(
                          height: 50,
                          child: Center(
                              child: Text(
                            'Info',
                            style: theme.textTheme.headline3,
                          )),
                        ),
                        SizedBox(
                          height: 50,
                          child: Center(
                              child: Text(
                            'Reviews',
                            style: theme.textTheme.headline3,
                          )),
                        ),
                        SizedBox(
                          height: 50,
                          child: Center(
                              child: Text(
                            'Sessions',
                            style: theme.textTheme.headline3,
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: const TabBarView(
                      children: [CourseInfo(), ReviewsTab(), VersionMap()],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
