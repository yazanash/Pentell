import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/dashboard/views/widgets/tab_btn.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: MediaQuery.of(context).size.width,
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
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [Icon(Icons.star), Text("5.0")],
                ),
                Row(
                  children: const [
                    Icon(Icons.people),
                    Text("1500 Member AVG.")
                  ],
                ),
                const Text("23/02/2023")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 3,
                    child: TapBtn(title: "Show Old VERSIONS")),
                Expanded(
                    flex: 1,
                    child: TapBtn(title: "Edit"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
