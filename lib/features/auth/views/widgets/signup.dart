import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/button.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/input.dart';
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
    // required this.controller,
    required this.onPressed,
  }) : super(key: key);

  // final ScrollController controller;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // decoration: const BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome To",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Pentelligence",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Column(children: [
                  FormInput(
                    label: "UserName",
                    getval: (p0) => {},
                    icon: const Icon(Icons.person)
                    // maxlen: 50,
                    // suffix:
                    //     const Icon(Icons.check_circle, color: Colors.green),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  FormInput(
                    label: "Email",
                    getval: (p0) => {},
                    icon: const Icon(Icons.email),
                    // maxlen: 50,
                    // suffix:
                    //     const Icon(Icons.check_circle, color: Colors.green),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  FormInput(
                    getval: (p0) => {},
                    label: "Password",
                    icon: const Icon(Icons.lock),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  FormInput(
                    getval: (p0) => {},
                    label: "Confirm Password",
                    icon: const Icon(Icons.lock),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Consumer<AuthState>(
                    builder: (_, state, child) {
                      return authButton(
                        () async {
                          await Provider.of<AuthState>(context, listen: false)
                              .testBtn();
                          // controller.animateTo(
                          //     MediaQuery.of(context).size.width,
                          //     duration: Duration(milliseconds: 500),
                          //     curve: Curves.linear);
                          print("object");
                        },
                        state.isLoading,
                      );
                    },
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
