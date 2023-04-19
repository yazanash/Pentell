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
    final theme = Theme.of(context);
    return Container(
        margin: const EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Complete your Account",
              style: theme.textTheme.headline1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Choose your interests", style: theme.textTheme.headline2),
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
              children: const [
                TagWidget(
                  tag: "tag one",
                  color: Colors.green,
                  isChecked: true,
                ),
                TagWidget(
                  tag: "tag two",
                  color: Colors.green,
                  isChecked: true,
                ),
                TagWidget(
                  tag: "tag three",
                  color: Colors.green,
                  isChecked: true,
                ),
                TagWidget(
                  tag: "tag four",
                  color: Colors.green,
                  isChecked: true,
                ),
                TagWidget(
                  tag: "tag five",
                  color: Colors.green,
                  isChecked: true,
                ),
                TagWidget(
                  tag: "tag sex",
                  color: Colors.green,
                  isChecked: true,
                ),
              ],
            )
          ]),
        ));
  }
}
