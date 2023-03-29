import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/views/widgets/course_header.dart';
import 'package:pentelligence/features/course/views/widgets/info_card.dart';

class CourseInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("course"),
      ),
      body: Column(children: [
        CourseHeader(institute: "institute"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: const [
              Text(
                "Course Name Will Be Here",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Bio(
            description:
                "sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn fkj",
            fontSize: 24.0,
            alignment: CrossAxisAlignment.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 25,
                    allowHalfRating: true,
                    itemBuilder: ((context, index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.amber,
                      );
                    }),
                    onRatingUpdate: (rating) {},
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "3.5",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              MaterialBtn(
                onPressed: () {},
                title: "Join Course",
                color: Colors.blue,
                icon: const Icon(
                  Icons.forward,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              CardInfo(ratio: 1, icon: Icons.book),
              CardInfo(ratio: 1, icon: Icons.lock_clock),
              CardInfo(ratio: 1, icon: Icons.person),
              CardInfo(ratio: 1, icon: Icons.map),
              CardInfo(ratio: 1, icon: Icons.phone),
              CardInfo(ratio: 1, icon: Icons.pending),
            ]),
          ),
        )
      ]),
    );
  }
}
