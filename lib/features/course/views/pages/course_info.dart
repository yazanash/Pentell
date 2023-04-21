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
        title: Text("titke"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Bio(
              color: Colors.black,
              description:
                  "sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn fkj",
              fontSize: 24.0,
              alignment: CrossAxisAlignment.start,
            ),
          ),
          const SizedBox(
            height: 10,
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                CardInfo(
                    ratio: 1.5,
                    description: "view course content",
                    text: "Content",
                    icon: Icons.book),
                CardInfo(
                    ratio: 1.5,
                    description: "15/12/2023",
                    text: "Time",
                    icon: Icons.lock_clock),
                CardInfo(
                    ratio: 1.5,
                    description: "95",
                    text: "Joined",
                    icon: Icons.person),
                CardInfo(
                    ratio: 1.5,
                    description: "Institute location",
                    text: "Location",
                    icon: Icons.map),
                CardInfo(
                    ratio: 1.5,
                    description: "+9969669669",
                    text: "Phone",
                    icon: Icons.phone),
                CardInfo(
                    ratio: 1.5,
                    description: "Full",
                    text: "In progress",
                    icon: Icons.pending),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Casts :",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Column(children: [UserTile(), UserTile(), UserTile()]),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Bio(
              color: Colors.black,
              description:
                  "description description description description description description description description description description",
              title: "Requirements",
              fontSize: 24.0,
              alignment: CrossAxisAlignment.start,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Reviews :",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Column(children: [Review(), Review(), Review(), Review()]),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
