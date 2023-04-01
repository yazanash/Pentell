import 'package:flutter/material.dart';

class PollOption extends StatelessWidget {
  const PollOption({
    Key? key,
    required this.hasVoted,
    required this.optionTitle,
    required this.votePercent,
  }) : super(key: key);
  final bool hasVoted;
  final double votePercent;
  final String optionTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(value: hasVoted, onChanged: (newVal) {}),
              Text('option title'),
            ],
          ),
          if (hasVoted)
            Row(
              children: [
                LinearProgressIndicator(
                  color: Colors.blue,
                  value: 0.5,
                ),
                Text('+15'),
              ],
            ),
        ],
      ),
    );
  }
}
