import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/poll_option.dart';
import 'package:pentelligence/features/course/views/widgets/poll_model.dart';

class PollWidget extends StatelessWidget {
  const PollWidget({
    Key? key,
    required this.pollModel,
  }) : super(key: key);
  final PollModel pollModel;
  final int userId = 2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'title',
            style: theme.textTheme.headline5,
          ),
          Text(
            'description or question asd asd asd asd asd asd asd asd asd asd as da sd asd as d as dasdasda asdasdas',
            style: theme.textTheme.bodySmall,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 1,
            color: Colors.grey,
          ),
          for (var i in pollModel.options.keys)
            PollOption(
              isEnabled: pollModel.selectedOption != null ? false : true,
              hasVoted: pollModel.selectedOption == i,
              optionTitle: pollModel.options[i].toString(),
              votePercent: 0,
              onSelect:pollModel.selectedOption ==null? (newVal){

              }:null,
            ),
        ],
      ),
    );
  }
}
