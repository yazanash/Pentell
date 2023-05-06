import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class ProfileImageView extends StatelessWidget {
  const ProfileImageView({
    Key? key,
    required this.imgUrl,
    required this.heroTag,
  }) : super(key: key);
  final String imgUrl;
  final Object heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Hero(
        tag: heroTag,
        child: Center(
          child: InteractiveViewer(child: Image.asset(imgUrl)),
        ),
      ),
    );
  }
}
