import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Popup extends StatelessWidget {
  const Popup({
    Key? key,
    required this.imgAsset,
    required this.description,
    required this.positiveAction,
    required this.negativeAction,
  }) : super(key: key);

  final String imgAsset;
  final String description;
  final VoidCallback positiveAction, negativeAction;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          children: [
            Image.asset(
              'lib/assets/logo3.png',
              color: Colors.amber,
            ),
            Text('aasdasdasd'),
            Text('aasdasdasd'),
            Text('aasdasdasd'),
            Text('aasdasdasd'),
            Text('aasdasdasd'),
            Text('aasdasdasd'),
          ],
        ),
      ),
    );
  }
}
