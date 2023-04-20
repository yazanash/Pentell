import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormStepTitle extends StatelessWidget {
  const FormStepTitle({Key? key, required this.title, this.isComplete = false})
      : super(key: key);
  final String title;
  final bool isComplete;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: isComplete
              ? theme.colorScheme.onBackground
              : theme.colorScheme.background,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          title,
          style: theme.textTheme.headline3!.copyWith(
            color: isComplete
                ? theme.colorScheme.background
                : theme.colorScheme.onBackground,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
