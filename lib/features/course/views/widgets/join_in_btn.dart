import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class JoinBtn extends StatelessWidget {
  const JoinBtn({
    Key? key,
    required this.title,
    required this.color,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color.withAlpha(50),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: Text(
            title,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
