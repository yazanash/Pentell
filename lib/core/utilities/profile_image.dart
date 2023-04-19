import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage(
      {Key? key,
      required this.url,
      this.radius,
      this.size = 110,
      this.isTrusted = false,
      this.padding = 15,
      this.borderColor = Colors.blue,
      this.background = Colors.transparent,
      this.borderWidth = 5.0})
      : super(key: key);

  final String url;
  double? radius;
  double size = 110;
  bool isTrusted = false;
  double padding = 15;
  Color borderColor = Colors.blue;
  Color background = Colors.transparent;
  double borderWidth = 5.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: radius != null
              ? BorderRadius.circular(radius!)
              : BorderRadius.circular(size),
          border: Border.all(color: borderColor, width: borderWidth),
          color: theme.colorScheme.primary),
      width: size,
      height: size,
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: Center(
            child: Image.asset(
              url,
            ),
          ),
        ),
        if (isTrusted)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              width: 30,
              height: 30,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "lib/assets/logo3.png",
                ),
              ),
            ),
          )
      ]),
    );
  }
}
