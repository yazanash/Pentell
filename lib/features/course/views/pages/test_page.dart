import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/plan_widget.dart';
import 'package:pentelligence/core/utilities/poll_widget.dart';
import 'package:pentelligence/features/course/views/widgets/poll_model.dart';
import 'package:pentelligence/features/dashboard/views/pages/course_contents_page.dart';
import 'package:timelines/timelines.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: PollWidget(
      //   pollModel: PollModel(
      //     userId: 'userId',
      //     options: {
      //       0: 'first option',
      //       1: 'second option',
      //       3: 'third option',
      //     },
      //     userSelection: {},
      //   ),
      // ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 1,
            color: Colors.grey,
          ),
          Expanded(
            flex: 4,
            child: Text('asdasdasd'),
          ),
        ],
      ),
    );
  }
}
