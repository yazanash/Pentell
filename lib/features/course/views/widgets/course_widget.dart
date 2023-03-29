import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/core/utilities/tag_widget.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    Key? key,
    required this.isRtl,
  }) : super(key: key);
  final bool isRtl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        //  main Card
        textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
        children: [
          Expanded(
            flex: 19,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: isRtl
                    ? BorderRadius.horizontal(right: Radius.circular(15))
                    : BorderRadius.horizontal(left: Radius.circular(15)),
              ),
              child: Column(
                //  subCard without color panel
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      // first row {Course name,institute name, teacher name} and image
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      textDirection:
                          isRtl ? TextDirection.rtl : TextDirection.ltr,
                      children: [
                        Column(
                          //  {Course ,institute ,teacher => names}

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            Text(
                              'Teacher Name',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                        ),
                        // Icon(
                        //   Icons.circle,
                        //   color: Colors.red,
                        //   size: 50,
                        // ),
                      ],
                    ),
                  ),
                  //  second row course description
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
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
                  Expanded(
                    flex: 2,
                    child: Column(
                      textDirection:
                          isRtl ? TextDirection.rtl : TextDirection.ltr,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            //  price and rate
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 15,
                                    allowHalfRating: true,
                                    itemBuilder: ((context, index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      );
                                    }),
                                    onRatingUpdate: (rating) {},
                                  ),
                                  Text(' 4.8'),
                                ],
                              ),
                              Text(
                                '10/10/22',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection:
                                isRtl ? TextDirection.rtl : TextDirection.ltr,
                            children: [
                              Text(
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
                                    color: Colors.blue,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            //  color panel
            child: Container(
              decoration: BoxDecoration(
                borderRadius: isRtl
                    ? BorderRadius.horizontal(left: Radius.circular(15))
                    : BorderRadius.horizontal(right: Radius.circular(15)),
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
