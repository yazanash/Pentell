import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/input.dart';
import 'package:pentelligence/core/utilities/inputbtn.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';

class AddCourse extends StatelessWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data")),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Input("hint", "Course Name"),
            Input("hint", "Description"),
            Input("hint", "Teacher"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InputBtn(
                  text: "Cancel",
                  icon: Icons.cancel,
                ),
                InputBtn(
                  text: "Save",
                  icon: Icons.add,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
