import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/form_item.dart';
import 'package:pentelligence/features/dashboard/models/entities/chapter.dart';

class AddPollWidget extends StatelessWidget {
  AddPollWidget({Key? key, required this.callBack}) : super(key: key);

  String? title;
  List<String> subTitles = [];
  final _formKey = GlobalKey<FormState>();
  final Function(Chapter c) callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            FormInput(
              label: 'Question?...',
              getval: (newTitle) {
                if (newTitle != null) title = newTitle;
              },
            ),
            for (int i = 0; i < subTitles.length; i++)
              FormInput(
                label: 'option ${i + 1}...',
                getval: (option) {
                  if (option != null) subTitles.add(option);
                },
                suffix: IconButton(
                  onPressed: () {
                    subTitles.removeAt(i);
                  },
                  icon: const Icon(Icons.remove, color: Colors.red, size: 20),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.save();
                    final chapter = Chapter();
                    chapter.title = title;
                    chapter.subTitles = subTitles;
                    callBack(chapter);
                  },
                  child: Text('Send'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
