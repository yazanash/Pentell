import 'package:flutter/material.dart';

class PollProgress extends StatelessWidget {
  const PollProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(value: false, onChanged: (newVal) {}),
              Text('option title'),
            ],
          ),
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
