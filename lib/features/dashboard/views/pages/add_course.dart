import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/dropdown.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/core/utilities/inputbtn.dart';
import 'package:pentelligence/core/utilities/tag_widget.dart';
import 'package:pentelligence/features/course/data/models/categories_model.dart';
import 'package:pentelligence/features/course/views/widgets/course_header.dart';
import 'package:provider/provider.dart';

import '../provider/chapterstate.dart';

class AddCourse extends StatelessWidget {
  AddCourse({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Course"),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CourseHeader(institute: "institute"),
                    FormInput(
                      label: "Course Name",
                      getval: ((val) => {}),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 150,
                      child: FormInput(
                        label: "Description",
                        getval: (val) => {},
                        expands: true,
                        maxLines: null,
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    // DropdownInput(
                    //   categories: [
                    //     CategoryModel(
                    //         Id: 1, name: "cate1", description: "description"),
                    //     CategoryModel(
                    //         Id: 2, name: "cate2", description: "description"),
                    //     CategoryModel(
                    //         Id: 3, name: "cate3", description: "description"),
                    //     CategoryModel(
                    //         Id: 4, name: "cate4", description: "description"),
                    //     CategoryModel(
                    //         Id: 8, name: "cate5", description: "description"),
                    //   ],
                    //   getval: ((val) => {}),
                    // ),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    Text('Choose catagory'),
                    Wrap(
                      children: const [
                        TagWidget(
                          tag: 'tag this',
                          color: Colors.black87,
                          isChecked: false,
                        ),
                        TagWidget(
                          tag: 'tag',
                          color: Colors.black87,
                          isChecked: false,
                        ),
                        TagWidget(
                          tag: 'tag that',
                          color: Colors.black87,
                          isChecked: false,
                        ),
                        TagWidget(
                          tag: 'tag what the hell',
                          color: Colors.black87,
                          isChecked: false,
                        ),
                        TagWidget(
                          tag: 'tag',
                          color: Colors.black87,
                          isChecked: false,
                        ),
                        TagWidget(
                          tag: 'tag',
                          color: Colors.black87,
                          isChecked: false,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InputBtn(
                          text: "Save to draft",
                          icon: Icons.add,
                          onPressed: () {
                            Navigator.push(
                              context,
                              DialogRoute(
                                context: context,
                                builder: (c) {
                                  return Container(
                                    color: Colors.white10,
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        InputBtn(
                          text: "open course",
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
