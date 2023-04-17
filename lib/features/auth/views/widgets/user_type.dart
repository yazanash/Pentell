import 'package:flutter/material.dart';

class UserType extends StatelessWidget {
  const UserType({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  final Icon icon;
  final String title, description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        color: Color(0xffFD830D),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 0,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: onPressed,
          child: Container(
            margin: EdgeInsets.all(15.0),
            width: MediaQuery.of(context).size.width * 0.76,
            child: Column(
              children: [
                icon,
                Text(title),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
