import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/poll_widget.dart';
import 'package:pentelligence/features/course/views/widgets/poll_model.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PollWidget(
        pollModel: PollModel(
          userId: 'userId',
          options: {
            0: 'first option',
            1: 'second option',
            3: 'third option',
          },
          userSelection: {},
        ),
      ),
    );
  }
}
