import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/connections/views/widgets/bio.dart';
import 'package:pentelligence/features/course/views/widgets/info_card.dart';
import 'package:pentelligence/features/course/views/widgets/rate_card.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CardInfo(
                      title: "Price",
                      info: "2000 \$",
                      icon: Icons.monetization_on,
                      child: Text(
                        "Offer for first 5",
                        style: theme.textTheme.headline4,
                      )),
                ),
                Expanded(
                  child: CardInfo(
                      title: "Chairs",
                      info: "30",
                      icon: Icons.people,
                      child: Row(
                        children: [
                          Text(
                            "Min : 25",
                            style: theme.textTheme.headline4,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Max : 50", style: theme.textTheme.headline4)
                        ],
                      )),
                ),
              ],
            ),
            CardInfo(
                title: "Starting Date",
                info: "19/05/2023 - 25/05/2023",
                icon: Icons.calendar_month,
                child: Row(
                  children: [
                    Text(
                      "10:00 AM",
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Morning",
                        style: theme.textTheme.headline4!
                            .copyWith(color: Colors.blue))
                  ],
                )),
            const CardInfo(
                title: "Location",
                info: "City Center ,Swaida tower, floor 5 ",
                icon: Icons.location_city,
                child: Text("Syria , Swaida")),
            const CardInfo(
              title: "Rating",
              icon: Icons.star,
              child: RateCard(),
            ),
           const CardInfo(
                title: "Requirements",
                info: "Laptop , PHOTOSHOP installed ",
                icon: Icons.recommend,
                ),
            CardInfo(
                title: "Extras",
                info: "Laptop , will be here installed ",
                icon: Icons.recommend,
                child: Text(
                  "Extras will be here",
                  style: theme.textTheme.headline3,
                )),
            CardInfo(
                title: "Casts",
                info: "Cast of course",
                icon: Icons.recommend,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      UserTile(),
                      UserTile(),
                      UserTile(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
