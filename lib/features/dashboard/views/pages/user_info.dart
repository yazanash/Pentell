import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/inputbtn.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/course/views/widgets/course_header.dart';

class UserInfo extends StatelessWidget {
  UserInfo({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data"),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileImage(
                        url: "lib/assets/logo3.png", background: Colors.black),
                    FormInput(
                      icon: Icon(Icons.person),
                      label: "User Name",
                      getval: ((val) => {}),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FormInput(
                      icon: Icon(Icons.email),
                      label: "Email",
                      getval: ((val) => {}),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FormInput(
                      icon: Icon(Icons.description),
                      label: "Bio",
                      getval: ((val) => {}),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FormInput(
                      icon: Icon(Icons.location_history_rounded),
                      label: "Address",
                      getval: ((val) => {}),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InputBtn(
                          text: "Next",
                          icon: Icons.add,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
