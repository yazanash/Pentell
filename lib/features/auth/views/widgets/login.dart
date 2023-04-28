import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/button.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/input.dart';
import 'package:pentelligence/core/utilities/pentell_card.dart';
import 'package:pentelligence/features/auth/views/provider/auth_state.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
    // required this.controller,
    required this.onPressed,
  }) : super(key: key);

  // final ScrollController controller;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: theme.colorScheme.background,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/assets/logo3.png",
                    color: theme.colorScheme.primary,
                    width: 100,
                    height: 113,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Pentelligence",
                      style: theme.textTheme.headline1!
                          .copyWith(color: theme.colorScheme.primary)),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 5),
                      child: Column(children: [
                        Text("Login",
                            style: theme.textTheme.headline2!
                                .copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        FormInput(
                          label: "UserName",
                          getval: (p0) => {},
                          icon: const Icon(Icons.email),
                          // maxlen: 50,
                          // suffix:
                          //     const Icon(Icons.check_circle, color: Colors.green),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FormInput(
                          getval: (p0) => {},
                          label: "Password",
                          icon: const Icon(Icons.lock),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Consumer<AuthState>(
                          builder: (_, state, child) {
                            return AuthBtn(
                              onPressed: () async {
                                await Provider.of<AuthState>(context,
                                        listen: false)
                                    .testBtn();
                                // controller.animateTo(
                                //     MediaQuery.of(context).size.width,
                                //     duration: Duration(milliseconds: 500),
                                //     curve: Curves.linear);
                                print("object");
                              },
                              isLoading: state.isLoading,
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("You don't have an account ?"),
                            Consumer<AuthState>(
                              builder: (_, state, child) {
                                return ElevatedButton(
                                  onPressed: () async {
                                    await Provider.of<AuthState>(context,
                                            listen: false)
                                        .testBtn();
                                    // controller.animateTo(
                                    //     MediaQuery.of(context).size.width,
                                    //     duration: Duration(milliseconds: 500),
                                    //     curve: Curves.linear);
                                    print("object");
                                  },
                                  style: ButtonStyle(
                                    elevation:
                                        MaterialStateProperty.all<double>(0),
                                  ),
                                  child: Text("Signup"),
                                );
                              },
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
