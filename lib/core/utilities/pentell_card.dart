import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PentellCard extends StatelessWidget {
  const PentellCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width * 0.76,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(
          "lib/assets/logo3.png",
          width: 47,
          height: 47,
          color: Colors.black,
        ),
        Text(
          "Pentelligence",
          style: theme.textTheme.headline1,
        ),
      ]),
    );
  }
}
