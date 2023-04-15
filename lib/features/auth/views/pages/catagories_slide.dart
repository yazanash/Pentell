import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/tag_widget.dart';

class CatagoriesSlide extends StatelessWidget {
  const CatagoriesSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text('choose your catagory'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(),
        ),
        SizedBox(height: 10),
        Wrap(
          children: [
            TagWidget(tag: 'tagasdasdasd'),
            TagWidget(tag: 'tag'),
            TagWidget(tag: 'tag'),
            TagWidget(tag: 'tagas'),
            TagWidget(tag: 'tag'),
            TagWidget(tag: 'tagsss'),
            TagWidget(tag: 'tag'),
            TagWidget(tag: 'tagdadasd'),
            TagWidget(tag: 'tag'),
            TagWidget(tag: 'tag'),
          ],
        ),
      ],
    );
  }
}
