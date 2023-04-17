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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Wrap(
              spacing: 5,
              children: const [
                TagWidget(tag: "tag one"),
                TagWidget(tag: "tag two"),
                TagWidget(tag: "tag three"),
                TagWidget(tag: "tag four"),
                TagWidget(tag: "tag five"),
                TagWidget(tag: "tag sex"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
