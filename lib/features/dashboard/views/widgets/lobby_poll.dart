import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/poll_widget.dart';
import 'package:pentelligence/features/course/views/widgets/poll_model.dart';

class LobbyPoll extends StatelessWidget {
  LobbyPoll({Key? key}) : super(key: key);

  var pollModel = PollModel(
    userId: 'userId',
    options: {0: 'zero', 1: 'one', 2: 'two'},
    userSelection: {},
  );

  @override
  Widget build(BuildContext context) {
    return PollWidget(
      onSelect: ((index) {
        print(pollModel.toJson());
        if (pollModel.userSelection.containsKey(index))
          pollModel.userSelection[index]!.add('userId');
        else
          pollModel.userSelection.addAll(
            {
              index: ['userId']
            },
          );
      }),
      pollModel: pollModel,
    );
  }
}
