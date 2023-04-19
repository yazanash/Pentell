import 'package:flutter/material.dart';

class MaterialBtn extends StatelessWidget {
  const MaterialBtn({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color,
    this.icon,
  }) : super(key: key);

  final String title;
  final Color? color;
  final VoidCallback onPressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: color != null
          ? color!.withOpacity(0.2)
          : theme.backgroundColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            // color: color ?? theme.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              if (icon != null)
                Row(children: [
                  icon as Widget,
                  SizedBox(width: 3),
                ]),
              Text(
                title,
                style: theme.textTheme.bodyText2?.copyWith(
                  color: color ?? theme.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
