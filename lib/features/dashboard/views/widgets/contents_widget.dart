import 'package:flutter/material.dart';
import 'package:pentelligence/features/dashboard/models/entities/contents_model.dart';

class ContentsWidget extends StatelessWidget {
  const ContentsWidget({
    Key? key,
    required this.contents,
    required this.deleteTitle,
    // required this.deleteOption,
  }) : super(key: key);

  final ContentsModel contents;
  final VoidCallback deleteTitle;
  // deleteOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: deleteTitle,
                  splashRadius: 15,
                  icon: Icon(
                    Icons.close_rounded,
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: TextFormField(
                  decoration: InputDecoration(labelText: contents.title),
                  validator: (value) {},
                ),
              ),
            ],
          ),
          for (String index in contents.subTitles)
            Container(
              padding: const EdgeInsets.only(left: 30.0),
              child: Form(
                key: key,
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          contents.subTitles.remove(index);
                        },
                        splashRadius: 15,
                        icon: Icon(
                          Icons.close_rounded,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'option $index'),
                        validator: (value) {
                          print('value = $value');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
