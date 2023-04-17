import 'package:flutter/material.dart';

Widget authButton(VoidCallback onPressed, bool isLoading) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        // ),
        child: isLoading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator.adaptive(
                  strokeWidth: 3,
                ),
              )
            : const Text(
                "Login",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    ),
  );
}
