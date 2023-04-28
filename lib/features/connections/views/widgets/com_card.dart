import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfCard extends StatelessWidget {
  const InfCard({Key? key, required this.title, required this.data})
      : super(key: key);
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(children: [
        Text(
          data,
          style:
              theme.textTheme.headline2!.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: theme.textTheme.headline3,
        ),
      ]),
    );
  }
}
