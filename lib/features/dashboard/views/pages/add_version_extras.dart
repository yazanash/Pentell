import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/core/utilities/form_item.dart';

class AddVersionExtras extends StatelessWidget {
  const AddVersionExtras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Course Extras',
          style: theme.textTheme.headline2,
        ),
        SizedBox(
          height: 150,
          child: FormInput(
            expands: true,
            maxLines: null,
            label: 'Extras',
            getval: (val) {},
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Finished'),
          ),
        ),
      ],
    );
  }
}
