import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CourseWidgetRedesign extends StatelessWidget {
  const CourseWidgetRedesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(child: Stack(
      children: [
        Container(),
        Card(),
      ],
    ),);
  }
}
