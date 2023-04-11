import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/dropdown.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/input.dart';
import 'package:pentelligence/core/utilities/inputbtn.dart';
import 'package:pentelligence/features/connections/views/widgets/dashboard_btn.dart';
import 'package:pentelligence/features/connections/views/widgets/materialbtn.dart';
import 'package:pentelligence/features/course/data/models/categories_model.dart';
import 'package:pentelligence/features/course/models/entities/categories.dart';
import 'package:pentelligence/features/dashboard/models/entities/chapter.dart';
import 'package:pentelligence/features/dashboard/views/provider/chapterstate.dart';
import 'package:pentelligence/features/dashboard/views/widgets/chapter_widget.dart';
import 'package:provider/provider.dart';

class AddChapter extends StatelessWidget {
  AddChapter({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  // String? description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Chapter Page"),
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<ChaptersState>(context, listen: false)
                    .add(Chapter());
                // print("object");
              },
              icon: const Icon(Icons.add,color: Color(0xFF708070),))
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Consumer<ChaptersState>(
            builder: (context, value, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < value.chapters.length; i++)
                    ChapterWidget(
                      chapter: value.chapters[i],
                      onpressed: () => value.addOp("enter sub", i),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      InputBtn(
                        text: "Save",
                        icon: Icons.add,
                      ),
                      InputBtn(
                        text: "Cancel",
                        icon: Icons.cancel,
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        )),
      ),
    );
  }
}
