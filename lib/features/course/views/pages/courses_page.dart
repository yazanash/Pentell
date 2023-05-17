import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/course/views/pages/story_page.dart';
import 'package:pentelligence/features/course/views/provider/courses_state.dart';
import 'package:pentelligence/features/course/views/provider/institute_ad_state.dart';
import 'package:pentelligence/features/course/views/widgets/course_widget.dart';
import 'package:pentelligence/features/course/views/widgets/institute_ad.dart';
import 'package:provider/provider.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key, required this.isRtl}) : super(key: key);
  final bool isRtl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ChangeNotifierProvider<InstituteAdState>(
        create: (context) => InstituteAdState(),
        builder: (c, child) {
          return Consumer<CoursesPageState>(
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: value.temp.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      color: theme.colorScheme.surface,
                      height: 120,
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Consumer<InstituteAdState>(
                        builder: (context, value, child) {
                          return ListView.builder(
                            itemCount: 2,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return InstituteAd(
                                url: "lib/assets/i1.jpg",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                          secondaryAnimation) {
                                        return SlideTransition(
                                          position: Tween<Offset>(
                                            begin: Offset(0, 1),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child: StoryPage(),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    );
                  }
                  return Selector<CoursesPageState, Tuple3<int, bool, bool>>(
                    selector: (_, state) => tuple3(state.temp[index - 1],
                        state.love[index - 1], state.saved[index - 1]),
                    builder: (_, data, __) => CourseWidget(
                      isRtl: isRtl,
                      url: "lib/assets/i1.jpg",
                      isLoved: data.value2,
                      isSaved: data.value3,
                      loveItem: () {
                        Provider.of<CoursesPageState>(context, listen: false)
                            .loveItem(index - 1);
                      },
                      saveItem: () {
                        Provider.of<CoursesPageState>(context, listen: false)
                            .save(index - 1);
                      },
                    ),
                  );
                },
              );
            },
          );
        });
  }
}
