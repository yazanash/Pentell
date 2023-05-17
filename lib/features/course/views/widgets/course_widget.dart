import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/views/pages/course_info.dart';
import 'package:pentelligence/features/course/views/provider/courses_state.dart';
import 'package:provider/provider.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    Key? key,
    required this.url,
    required this.isRtl,
    this.isSaved = false,
    this.isLoved = false,
    this.loveItem,
    this.saveItem,
  }) : super(key: key);
  final bool isRtl, isSaved, isLoved;
  final String url;
  final VoidCallback? loveItem, saveItem;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print('course');
    return InkWell(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: ((context) => CourseInfoPage())));

        Navigator.of(context).push(PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500),
          reverseTransitionDuration: Duration(milliseconds: 500),
          barrierColor: Colors.transparent,
          pageBuilder: (context, animation, secondaryAnimation) =>
              CourseInfoPage(),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        ));

        // print("object");
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: theme.colorScheme.background,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //  subCard without color panel
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Text(
                      'Course Name widsvsvsdvll bdsdsdvsve hereee and fuck this widget',
                      style: theme.textTheme.headline2!
                          .copyWith(fontWeight: FontWeight.bold),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              //  third row controls
              Column(
                textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProfileImage(
                        url: url,
                        size: 40,
                        borderWidth: 0,
                        padding: 8,
                        borderColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text('Business Name',
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: theme.textTheme.headline3)),
                          Text(
                            "23/04/2023",
                            style: theme.textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                          'description of the final course at stake of course its not final nor finished but thats what you will get when you fuck with santa clause',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyText2),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection:
                        isRtl ? TextDirection.rtl : TextDirection.ltr,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        margin: const EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_border_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              ' 4.8',
                              style: theme.textTheme.headline3!
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ProfileImage(
                            url: "lib/assets/u1.jpg",
                            padding: 5,
                            size: 30,
                            borderWidth: 0,
                            borderColor: Color.fromARGB(0, 240, 229, 229),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          ProfileImage(
                            url: "lib/assets/u2.jpg",
                            padding: 5,
                            size: 30,
                            borderWidth: 0,
                            borderColor: Colors.transparent,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection:
                        isRtl ? TextDirection.rtl : TextDirection.ltr,
                    children: const [
                      Text(
                        "You, Osama, Yazan and other liked this course",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.local_offer,
                              // color: theme.colorScheme.primary,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.badge,
                              // color: theme.colorScheme.primary,
                              size: 20,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: saveItem,
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all<double>(0),
                                // backgroundColor:
                                //     MaterialStateProperty.all<Color>(
                                //         Colors.transparent)
                              ),
                              child: Icon(isSaved
                                  ? Icons.bookmark
                                  : Icons.bookmark_border),
                            ),
                            ElevatedButton(
                              onPressed: loveItem,
                              style: ButtonStyle(
                                  // backgroundColor:
                                  //     MaterialStateProperty.all<Color>(
                                  //         Colors.transparent),
                                  elevation:
                                      MaterialStateProperty.all<double>(0)),
                              child: Icon(isLoved
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined),
                            ),
                          ],
                        ),
                        // join btn
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
