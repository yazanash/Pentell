import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/views/pages/course_info.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    Key? key,
    required this.isRtl,
  }) : super(key: key);
  final bool isRtl;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => CourseInfoPage()))),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
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
                  Row(
                    children: [
                      ProfileImage(
                        url: "lib/assets/logo3.png",
                        size: 50,
                        borderWidth: 0,
                        padding: 8,
                        borderColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Course Name', style: theme.textTheme.headline1),
                          Row(
                            children: [
                              Icon(
                                Icons.local_offer,
                                color: theme.colorScheme.secondary,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.badge,
                                color: theme.colorScheme.secondary,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
                      Text('Business Name', style: theme.textTheme.headline3),
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
                      Text(
                        "23/04/2023",
                        style: theme.textTheme.bodyText2,
                      ),
                      Row(
                        children: [
                          ProfileImage(
                            url: "lib/assets/logo3.png",
                            padding: 5,
                            size: 30,
                            borderWidth: 0,
                            borderColor: Colors.transparent,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          ProfileImage(
                            url: "lib/assets/logo3.png",
                            padding: 5,
                            size: 30,
                            borderWidth: 0,
                            borderColor: Colors.transparent,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          ProfileImage(
                            url: "lib/assets/logo3.png",
                            padding: 5,
                            size: 30,
                            borderWidth: 0,
                            borderColor: Colors.transparent,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          ProfileImage(
                            url: "lib/assets/logo3.png",
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            // backgroundColor:
                            //     MaterialStateProperty.all<Color>(
                            //         Colors.transparent)
                          ),
                          child: Icon(Icons.bookmark_border),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              // backgroundColor:
                              //     MaterialStateProperty.all<Color>(
                              //         Colors.transparent),
                              elevation: MaterialStateProperty.all<double>(0)),
                          child: Icon(Icons.star),
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
