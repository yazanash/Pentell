import 'package:flutter/material.dart';

class PlanWidget extends StatelessWidget {
  const PlanWidget({
    Key? key,
    required this.isLeft,
    required this.isRight,
    required this.title,
    required this.isSeelected,
    required this.onPressed,
  }) : super(key: key);
  final bool isLeft, isRight;
  final String title;
  final bool isSeelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.horizontal(
          left: isLeft ? Radius.circular(10) : Radius.zero,
          right: isRight ? Radius.circular(10) : Radius.zero),
      color: Colors.white38,
      child: InkWell(
        borderRadius: BorderRadius.horizontal(
          left: isLeft ? Radius.circular(10) : Radius.zero,
          right: isRight ? Radius.circular(10) : Radius.zero,
        ),
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: isSeelected ? Colors.grey.shade900 : null,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          child: Text(title),
        ),
      ),
    );
  }
}
