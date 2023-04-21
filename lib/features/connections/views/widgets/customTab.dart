import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: isSelected
                ? Border(bottom: BorderSide(width: 3, color: Colors.blue))
                : Border(),
          ),
          child: Text('label'),
        );
      }),
    );
  }
}
