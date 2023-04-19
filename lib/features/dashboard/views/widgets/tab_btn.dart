import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TapBtn extends StatelessWidget {
  const TapBtn({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              alignment: Alignment.centerLeft,
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              )),
          onPressed: onPressed,
          child: Row(
            children: [
              Text(this.title),
            ],
          )),
    );
  }
}
