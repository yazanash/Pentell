import 'dart:ffi';

import 'package:flutter/widgets.dart';

class Bio extends StatelessWidget {
  Bio(
      {Key? key,
      this.title = 'Bio :',
      required this.description,
      this.fontSize = 16,
      this.alignment = CrossAxisAlignment.center})
      : super(key: key);
  final String description;
  final String title;
  double fontSize;
  CrossAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: alignment,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(description.trim()),
        ],
      ),
    );
  }
}
