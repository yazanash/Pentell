import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  const StatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      // width: MediaQuery.of(context).size.width * 0.45,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '150',
            style: theme.textTheme.headline6,
          ),
          Text('data'),
        ],
      ),
    );
  }
}
