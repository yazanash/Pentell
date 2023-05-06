import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage(
      {Key? key,
      required this.url,
      this.onPressed,
      this.radius,
      this.size = 110,
      this.isTrusted = false,
      this.padding = 15,
      this.borderColor = Colors.blue,
      this.background = Colors.transparent,
      this.borderWidth = 5.0})
      : super(key: key);

  final String url;
  final VoidCallback? onPressed;
  double? radius;
  double size = 110;
  bool isTrusted = false;
  double padding = 15;
  Color borderColor = Colors.blue;
  Color background = Colors.transparent;
  double borderWidth = 5.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: radius != null
                  ? BorderRadius.circular(radius!)
                  : BorderRadius.circular(size),
              border: Border.all(color: borderColor, width: borderWidth),
              color: theme.colorScheme.primary),
          width: size,
          height: size,
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                url,
                fit: BoxFit.cover,
                width: size,
                height: size,
              ),
            ),
            if (isTrusted)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  width: 30,
                  height: 30,
                  child: const Center(
                      child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  )
                      
                      ),
                ),
              )
          ]),
        ),
      ),
    );
  }
}
