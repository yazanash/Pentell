import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/dropdown.dart';
import 'package:pentelligence/core/utilities/input.dart';
import 'package:pentelligence/core/utilities/inputbtn.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/data/models/categories_model.dart';
import 'package:pentelligence/features/course/models/entities/categories.dart';

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
            Input("Enter Course Name", "Course Name"),
            Input("Enter Description here", "Description"),
            DropdownInput(categories: [
              CategoryModel(Id: 1, name: "cate1", description: "description"),
              CategoryModel(Id: 2, name: "cate2", description: "description"),
              CategoryModel(Id: 3, name: "cate3", description: "description"),
              CategoryModel(Id: 4, name: "cate4", description: "description"),
              CategoryModel(Id: 8, name: "cate5", description: "description"),
            ]),
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
