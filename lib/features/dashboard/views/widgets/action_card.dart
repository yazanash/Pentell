import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    Key? key,
    required this.title,
    required this.desc,
    required this.icon,
    required this.onPressed,
    this.color,
  }) : super(key: key);
  final String title, desc;
  final Widget icon;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      color: color ?? theme.primary,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        // splashColor: theme.secondary,
        overlayColor: MaterialStateProperty.all<Color>(theme.primaryContainer),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: icon,
                  ),
                  Text(
                    title,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(desc),
            ],
          ),
        ),
      ),
    );
  }
}
