import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: theme.colorScheme.background,
        ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Title Will be here",
            style: theme.textTheme.headline3,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "description description description description description description description ",
            style: theme.textTheme.bodyText2,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "20/04/2023",
                style: theme.textTheme.headline4,
              ),
              Text(
                "02:18",
                style: theme.textTheme.headline4,
              ),
            ],
          )
        ]),
    );
  }
}
