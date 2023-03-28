import 'package:flutter/material.dart';

Widget authButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
    child: SizedBox(
      width: double.infinity,
      height: 40,
      child: OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: const Text(
            "Login",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.teal),
          )),
    ),
  );
}
