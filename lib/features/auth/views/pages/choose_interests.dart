import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/tag_widget.dart';

class ChooseInterests extends StatelessWidget {
  const ChooseInterests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Complete your Account"),
            const SizedBox(
              height: 10,
            ),
            const Text("Choose your interests"),
            const SizedBox(
              height: 10,
            ),
            FormInput(
              getval: (text) {},
              label: "Search",
              icon: Icon(Icons.search),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                TagWidget(
                  tag: "tag one",
                  color: Colors.red,
                  isChecked: true,
                  callback: (val) {},
                ),
                TagWidget(
                  tag: "tag two",
                  color: Colors.red,
                  isChecked: true,
                  callback: (val) {},
                ),
                TagWidget(
                  tag: "tag three",
                  color: Colors.red,
                  isChecked: true,
                  callback: (val) {},
                ),
                TagWidget(
                  tag: "tag four",
                  color: Colors.red,
                  isChecked: true,
                  callback: (val) {},
                ),
                TagWidget(
                  tag: "tag five",
                  color: Colors.red,
                  isChecked: true,
                  callback: (val) {},
                ),
                TagWidget(
                  tag: "tag sex",
                  color: Colors.red,
                  isChecked: true,
                  callback: (val) {},
                ),
              ],
            )
          ]),
        ));
  }
}
