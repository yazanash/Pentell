import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            icon,
            Text(title),
          ],
        ),
      ),
    );
  }
}
