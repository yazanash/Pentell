import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/auth/models/entities/profile.dart';
import 'package:pentelligence/features/auth/models/entities/user_profile.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';

class CourseHeader extends StatelessWidget {
  final String institute;
  CourseHeader({required this.institute});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: theme.colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "Course Name Will Be Here",
              textAlign: TextAlign.start,
              style: theme.textTheme.headline1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileImage(
                  url: "lib/assets/u4.jpg",
                  size: 60,
                  borderWidth: 0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "profile.name",
                        style: theme.textTheme.headline2!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "29/05/2023",
                        style: theme.textTheme.headline3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Bio(
              alignment: CrossAxisAlignment.start,
              description:
                  "sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn sdkfnsldkfnksdjfnkjnk jnskj nksdj nksdjfn ksdjfn ksdjnf ksjdnf ksdjn fksdjn fksdn fkj",
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Icon(Icons.bookmark_border)),
              TextButton(onPressed: () {}, child: Icon(Icons.favorite)),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Text("Follow"))),
            ],
          ),
        ],
      ),
    );
  }
}
