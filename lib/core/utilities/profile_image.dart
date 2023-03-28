import 'package:flutter/material.dart';

Widget ProfileImage(
    {
     required String url,
    double? radius,
    double size = 110,
    bool isTrusted = false,
    double padding = 15,
    borderColor = Colors.blue,
    background = Colors.transparent,
    double borderWidth = 5.0}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: radius != null
            ? BorderRadius.circular(radius)
            : BorderRadius.circular(size),
        border: Border.all(color: borderColor, width: borderWidth),
        color: background),
    width: size,
    height: size,
    child: Stack(children: [
      Padding(
        padding: EdgeInsets.all(padding),
        child: Image.asset(
          url,
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
