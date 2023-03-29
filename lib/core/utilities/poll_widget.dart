import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/poll_progress.dart';

class PollWidget extends StatelessWidget {
  const PollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('title'),
          Text('description or question'),
          PollProgress(),
        ],
      ),
    );
  }
}
