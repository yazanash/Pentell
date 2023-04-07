import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Course name",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: RatingBar.builder(
              itemSize: 20,
              allowHalfRating: true,
              itemBuilder: ((context, index) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              }),
              onRatingUpdate: (rating) {},
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    "V_COUNT",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("6", style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                children: const [
                  Text("S_COUNT", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("120", style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                children: const [
                  Text("Ratings", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("5.0", style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Bio(
              description:
                  "description description description description description description",
              title: "description",
              alignment: CrossAxisAlignment.start,
            ),
          )
        ],
      ),
    );
  }
}
