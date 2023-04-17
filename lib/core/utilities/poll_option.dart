import 'package:flutter/material.dart';

class PollOption extends StatelessWidget {
  const PollOption({
    Key? key,
    required this.isDisabled,
    required this.hasVoted,
    required this.optionTitle,
    required this.votePercent,
    this.onSelect,
  }) : super(key: key);
  final bool isDisabled, hasVoted;
  final double? votePercent;
  final String optionTitle;
  final void Function(bool?)? onSelect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Checkbox(value: hasVoted, onChanged: onSelect),
            Text('option title'),
          ],
        ),
        if (isDisabled)
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: LinearProgressIndicator(
                    backgroundColor: theme.primaryColorLight,
                    color: Colors.blue,
                    value: votePercent,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '+999',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
