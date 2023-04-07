import 'package:flutter/material.dart';

class InputBtn extends StatelessWidget {
  InputBtn(
      {Key? key,
      this.text = "button",
      this.iconColor = Colors.blue,
      this.iconSize = 30.0,
      this.icon = Icons.add})
      : super(key: key);
  final String text;
  final Color iconColor;
  final double iconSize;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),

          // backgroundColor: MaterialStateProperty.all<Color>(Color(0xff444444)),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
      ),
    );
  }
}
