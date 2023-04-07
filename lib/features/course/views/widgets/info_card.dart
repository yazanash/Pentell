import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

Widget CardInfo(
    {String text = "button",
    iconColor = Colors.white,
    iconSize = 30.0,
    String description = "dsv",
    icon = Icons.add,
    double ratio = 0.75}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: AspectRatio(
      aspectRatio: ratio,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ElevatedButton(
            onPressed: () {},
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
                 const SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    ),
  );
}
