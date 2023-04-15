import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({Key? key, required this.tag}) : super(key: key);
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        border: Border.all(
          color: Colors.lightBlue,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        '$tag',
        style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
