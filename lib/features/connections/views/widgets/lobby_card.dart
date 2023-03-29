import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

Widget LobbyCard() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    width: 160,
    height: 170,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        ProfileImage(
            url: "lib/assets/logo3.png",
            size: 45,
            padding: 8.0,
            borderColor: Colors.transparent,
            background: Colors.blue,
            borderWidth: 0),
        const Text(
          "اسم الدورة",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Institute Name",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "99/99/9999",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "+99",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "New Messages",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        )
      ]),
    ),
  );
}
