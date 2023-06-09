import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  const Popup({
    Key? key,
    this.title,
    this.description,
    this.icon,
    this.body = const [],
    this.popColor = Colors.white,
    this.positiveAction,
    this.negativeAction,
  }) : super(key: key);

  final String? description, title;
  final Widget? positiveAction, negativeAction, icon;
  final Color? popColor;

  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: popColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
              ),
              padding: EdgeInsets.all(15),
              child: icon),
          if (title != null)
            Text(
              title as String,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (description != null)
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                description as String,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ...body,
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (positiveAction != null) positiveAction as Widget,
                if (negativeAction != null) negativeAction as Widget,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
