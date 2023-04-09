import 'package:flutter/material.dart';
import 'package:pentelligence/features/dashboard/models/entities/contents_model.dart';
import 'package:pentelligence/features/dashboard/views/widgets/contents_widget.dart';

class CourseContentsPage extends StatelessWidget {
  CourseContentsPage({Key? key}) : super(key: key);

  final contentsModel = [
    ContentsModel(
      'title1',
      subTitles: ['a', 'b', 'c'],
    ),
    ContentsModel(
      'title2',
      subTitles: ['a', 'b', 'c'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Contents'),
      ),
      body: ListView.builder(
        itemCount: contentsModel.length,
        itemBuilder: (context, index) {
          return Container(
            key: Key('$index'),
            child: ContentsWidget(
              contents: contentsModel[index],
              deleteTitle: () {
                // contentsModel.removeAt(index);
              },
            ),
          );
        },
      ),
    );
  }
}
