import 'package:flutter/material.dart';

Widget Input(hint, label) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            style: const TextStyle(fontSize: 14),
            decoration: InputDecoration(
                hintText: hint,
                fillColor: Colors.white,
                filled: true,
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white, width: 3),
                    gapPadding: 10),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white, width: 3),
                    gapPadding: 10)),
          ),
        ]),
  );
}
