import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlanDescription extends StatelessWidget {
  const PlanDescription({
    Key? key,
    this.leading,
    this.title,
    this.description,
  }) : super(key: key);
  final Widget? leading, title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              if (leading != null) leading as Widget,
              if (title != null) title as Widget,
            ],
          ),
          if (description != null) description as Widget,
        ],
      ),
    );
  }
}
