import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/timeline_widget.dart';
import 'package:pentelligence/features/dashboard/views/widgets/map_card.dart';
import 'package:timelines/timelines.dart';

class VersionMap extends StatelessWidget {
  const VersionMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: TimeLineWidget(
                dotIndicator: DotIndicator(
                  size: 30,
                  child: Center(
                      child: Text(
                    "1",
                    style: theme.textTheme.bodyText1!
                        .copyWith(color: theme.colorScheme.onPrimary),
                  )),
                ),
                indicatorPos: 0.2,
                children: const [
                  SessionCard(),
                  SessionCard(),
                  SessionCard(),
                  SessionCard(),
                  SessionCard(),
                  SessionCard(),
                  SessionCard(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
