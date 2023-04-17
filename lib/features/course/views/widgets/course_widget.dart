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
                  // first row {Course name,institute name, teacher name} and image
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
                      //  {Course ,institute ,teacher => names}

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'institute Name',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Course name',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.amber),
                        ),
                      ],
                    ),
                  ],
                ),
                //  second row course description
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      'description of the final course at stake of course its not final nor finished but thats what you will get when you fuck with santa clause',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),

                //  third row controls
                Column(
                  textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
                  children: [
                    Row(
                      //  price and rate
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 15,
                              allowHalfRating: true,
                              ignoreGestures: true,
                              initialRating: 4.1,
                              itemBuilder: ((context, index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              }),
                              onRatingUpdate: (rating) {},
                            ),
                            const Text(' 4.8'),
                          ],
                        ),
                        const Text(
                          '10/10/22',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection:
                          isRtl ? TextDirection.rtl : TextDirection.ltr,
                      children: [
                        const Text(
                          "Price : 1'500'000 s.p",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        Row(
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: IconButton(
                                splashRadius: 20,
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border),
                              ),
                            ),
                            // join btn
                            MaterialBtn(
                              title: 'join in',
                              color: theme.colorScheme.primary,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topRight: Radius.circular(15)),
              ),
              child: RatingBar.builder(
                ignoreGestures: true,
                itemSize: 16,
                itemCount: 3,
                allowHalfRating: true,
                itemBuilder: ((context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.flash_on,
                      color: Colors.yellow,
                    ),
                  );
                }),
                onRatingUpdate: (rating) {},
              ),
            ),
          )
        ]),
      ),
    );
  }
}
