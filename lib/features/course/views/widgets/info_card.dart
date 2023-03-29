import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

Widget CardInfo(
    {String text = "button",
    iconColor = Colors.white,
    iconSize = 30.0,
    icon = Icons.add,
    double ratio = 0.75}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: AspectRatio(
      aspectRatio: ratio,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
       
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: iconSize,
                    color: iconColor,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "description",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ]),
      ),
    ),
  );
}
