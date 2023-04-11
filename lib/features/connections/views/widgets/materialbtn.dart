import 'package:flutter/material.dart';

class MaterialBtn extends StatelessWidget {
  const MaterialBtn({
    Key? key,
    required this.title,
    required this.color,
    required this.onPressed,
    this.icon,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onPressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: theme.backgroundColor.withAlpha(50),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: theme.primaryColor,
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
                style: theme.textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
