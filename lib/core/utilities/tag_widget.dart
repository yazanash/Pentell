import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({
    Key? key,
    required this.tag,
    required this.color,
    required this.isChecked,
    required this.callback,
  }) : super(key: key);
  final String tag;
  final Color color;
  final bool isChecked;
  final void Function(bool?)? callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        // color: Colors.lightBlue[50],
        border: Border.all(
          color: color,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 35,
            height: 35,
            child: Checkbox(
              value: isChecked,
              onChanged: callback,
              shape: const CircleBorder(),
              activeColor: Theme.of(context).colorScheme.primary,
              tristate: true,
              splashRadius: 0,
            ),
          ),
          Text(
            '$tag',
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
