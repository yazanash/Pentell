import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/course/views/widgets/poll_model.dart';

class PollWidget extends StatelessWidget {
  const PollWidget({
    Key? key,
    required this.pollModel,
  }) : super(key: key);
  final PollModel pollModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('title'),
          Text('description or question'),
          for (int i = 0; i < pollModel.options.length; i++) Text('data'),
        ],
      ),
    );
  }
}
