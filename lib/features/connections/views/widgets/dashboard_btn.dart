import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

Widget DashboardButton(
    {String text = "button",
   Color iconColor = Colors.blue,
   double iconSize = 30.0,
   IconData icon = Icons.add,
    double ratio = 0.75}) {
  return AspectRatio(
    aspectRatio: ratio,
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
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
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ]),
        ),
      ),
    ),
  );
}
