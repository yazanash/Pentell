import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/button.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/features/auth/views/pages/edit_profile_page.dart';
import 'package:provider/provider.dart';

import '../provider/auth_state.dart';

class ChooseAction extends StatelessWidget {
  const ChooseAction({
    Key? key,
    // required this.controller,
    // required this.onPressed,
  }) : super(key: key);
  // final ScrollController controller;
  // final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          image: const DecorationImage(
              image: AssetImage("lib/assets/background.png"),
              opacity: 1,
              fit: BoxFit.cover),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset("lib/assets/logo3.png",
                        color: Colors.black, width: 50, height: 50),
                    const Text(
                      "Pentelligence",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              
            ],
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
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "TRIOVERSE",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
