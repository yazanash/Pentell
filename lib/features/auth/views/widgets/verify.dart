import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/button.dart';
import 'package:pentelligence/core/utilities/input.dart';
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:provider/provider.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({
    Key? key,
    required this.controller,
    required this.onPressed,
  }) : super(key: key);
  final ScrollController controller;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff0E9A9F), Color(0xff27DCAB)],
            begin: Alignment.topCenter,
            transform: GradientRotation(270),
            end: Alignment.bottomCenter),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Verify Your Account",
                style: TextStyle(
                  fontSize: 26,
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
                    Input("Enter Code Here", "Your Code"),
                    const SizedBox(
                      height: 30,
                    ),
                    Consumer<AuthState>(
                      builder: (_, state, child) {
                        return authButton(
                          () async {
                            await Provider.of<AuthState>(context, listen: false)
                                .testBtn();
                            controller.animateTo(
                                MediaQuery.of(context).size.width,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear);
                            print("object");
                          },
                          state.isLoading,
                        );
                      },
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "From",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "TRIOVERSE",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
