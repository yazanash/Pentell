import 'package:flutter/material.dart';
import 'package:pentelligence/core/utalis/input.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff0E9A9F), Color(0xff27DCAB)],
              begin: Alignment.topLeft,
              transform: GradientRotation(30),
              end: Alignment.bottomRight),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome To",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Pentelligence",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.5)),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  child: Column(children: [
                    Input("user@example.com", "Email"),
                    const SizedBox(
                      height: 30,
                    ),
                    Input("Enter Your Password", "Password"),
                  ]),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
