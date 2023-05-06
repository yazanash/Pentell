import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          child: Image.asset("lib/assets/u4.jpg"),
        ),
      ),
    );
  }
}
