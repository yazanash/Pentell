import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  const Popup({
    Key? key,
    required this.imgAsset,
    required this.title,
    required this.description,
    this.body = const [],
    this.popColor = Colors.white,
    this.assetColor = Colors.grey,
    this.positiveAction,
    this.negativeAction,
  }) : super(key: key);

  final String imgAsset;
  final String description, title;
  final Widget? positiveAction, negativeAction;
  final Color popColor, assetColor;
  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: popColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Image.asset(
                imgAsset,
                color: assetColor,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            ...body,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (positiveAction != null) positiveAction as Widget,
                if (negativeAction != null) negativeAction as Widget,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
