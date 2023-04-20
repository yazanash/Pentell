import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/poll_option.dart';
import 'package:pentelligence/features/course/views/widgets/poll_model.dart';

class PollWidget extends StatelessWidget {
  const PollWidget({
    Key? key,
    required this.pollModel,
    required this.onSelect,
  }) : super(key: key);
  final PollModel pollModel;
  final int userId = 2;
  final void Function(int index) onSelect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('user name'),
                  Text('22:30'),
                ],
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {},
                child: Row(
                  children: [
                    Text('15 '),
                    Icon(
                      Icons.remove_red_eye,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
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
              isDisabled: pollModel.selectedOption != null ? true : false,
              hasVoted: pollModel.selectedOption == i,
              optionTitle: pollModel.options[i] as String,
              votePercent: 0,
              onSelect: pollModel.selectedOption == null
                  ? (newVal) {
                      onSelect(i);
                    }
                  : null,
            ),
        ],
      ),
    );
  }
}
