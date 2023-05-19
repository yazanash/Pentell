import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
// import 'package:pentelligence/features/dashboard/models/entities/chapter.dart';

class ChapterWidget extends StatelessWidget {
  const ChapterWidget({Key? key, this.onpressed}) : super(key: key);
  // final Chapter chapter;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        FormInput(
          getval: (val) => {},
          label: "Title",
          suffix: IconButton(
            icon: const Icon(Icons.add),
            splashRadius: 15,
            onPressed: onpressed,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              // for (int i = 0; i < chapter.subTitles.length; i++)
              //   FormInput(
              //     getval: (val) => {},
              //     label: "subtitle ${i}",
              //     suffix: IconButton(
              //       splashRadius: 15,
              //       icon: const Icon(
              //         Icons.remove,
              //         color: Colors.red,
              //       ),
              //       onPressed: () {
              //         chapter.subTitles.removeAt(i);
              //       },
              //     ),
              //   ),
            ],
          ),
        )
      ]),
    );
  }
}
