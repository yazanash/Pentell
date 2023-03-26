import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/core/utilities/tag_widget.dart';
import 'package:pentelligence/features/course/views/widgets/join_in_btn.dart';

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
                    child: Row(
                      // first row {Course name,institute name, teacher name} and image
                      textDirection:
                          isRtl ? TextDirection.rtl : TextDirection.ltr,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            //  {Course ,institute ,teacher => names}

                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Course name',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.amber),
                              ),
                              Text(
                                'Institute Name  |  Teacher Name',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          // circle image
                          child: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //  second row course description
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'description of the final course at stake of course its not final nor finished but thats what you will get when you fuck with santa clause',
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),

                  //  third row controls
                  Expanded(
                    child: Row(
                      textDirection:
                          isRtl ? TextDirection.rtl : TextDirection.ltr,
                      children: [
                        Expanded(
                          flex: 10,
                          child: Column(
                            //  price and rate
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Price : 1'500'000 s.p",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                textDirection: isRtl
                                    ? TextDirection.rtl
                                    : TextDirection.ltr,
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
                                      onRatingUpdate: (rating) {}),
                                  Text('4.8'),
                                ],
                              )
                            ],
                          ),
                        ),
                        //  date of creation
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit,
                                size: 15,
                              ),
                              Text(
                                '10/10/22',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //  wishlist
                        Expanded(
                          flex: 8,
                          child: Row(
                            textDirection:
                                isRtl ? TextDirection.rtl : TextDirection.ltr,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: IconButton(
                                  splashRadius: 20,
                                  onPressed: () {},
                                  icon: Icon(Icons.bookmark_border),
                                ),
                              ),
                              JoinBtn(
                                title: 'join in',
                                color: Colors.blue,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        //  joinButton
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
                color: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
