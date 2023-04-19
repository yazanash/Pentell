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
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //  subCard without color panel
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
                  children: [
                    ProfileImage(
                      url: "lib/assets/logo3.png",
                      size: 60,
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
                        Text('17 min ago',
                            style: theme.textTheme.headline4!
                                .copyWith(fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                //  third row controls
                Column(
                  textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
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
                    Row(
                      //  price and rate
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(' 4.8'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProfileImage(
                              url: "lib/assets/logo3.png",
                              size: 30,
                              padding: 5,
                              borderWidth: 0,
                            ),
                            ProfileImage(
                              url: "lib/assets/logo3.png",
                              size: 30,
                              padding: 5,
                              borderWidth: 0,
                            ),
                            ProfileImage(
                              url: "lib/assets/logo3.png",
                              size: 30,
                              padding: 5,
                              borderWidth: 0,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection:
                          isRtl ? TextDirection.rtl : TextDirection.ltr,
                      children: [
                        const Text(
                          "You, osama,yazan and other liked this course",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      color: theme.colorScheme.surface,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(0)),
                              child: IconButton(
                                splashRadius: 20,
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(0)),
                              child: IconButton(
                                splashRadius: 20,
                                onPressed: () {},
                                icon: Icon(Icons.share),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(0)),
                              child: IconButton(
                                splashRadius: 20,
                                onPressed: () {},
                                icon: Icon(Icons.star),
                              ),
                            ),
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
        ]),
      ),
    );
  }
}
