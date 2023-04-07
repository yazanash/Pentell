import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

Widget DashboardButton(
    {String text = "button",
    String description = "description will be here",
    Color iconColor = Colors.blue,
    double iconSize = 30.0,
    IconData icon = Icons.add,
    double ratio = 0.75}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        // backgroundColor: MaterialStateProperty.all<Color>(Color(0xff444444)),
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Icon(
                Icons.chat,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ]),
    ),
  );
}
