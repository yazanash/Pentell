import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/features/dashboard/views/widgets/tab_btn.dart';

class VersionsList extends StatelessWidget {
  const VersionsList({Key? key, required this.controller}) : super(key: key);
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      child: SingleChildScrollView(
        controller: controller,
        child: Column(children: [
          Container(
            height: 5,
            width: 81,
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Color(0xff191716),
          ),
          Column(
            children: [
              TapBtn(title: "title"),
              TapBtn(title: "title"),
              TapBtn(title: "title"),
              TapBtn(title: "title"),
              TapBtn(title: "title"),
              TapBtn(title: "title"),
            ],
          )
        ]),
      ),
    );
  }
}
