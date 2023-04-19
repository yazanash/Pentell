import 'package:flutter/material.dart';

class PendingCoursesPage extends StatelessWidget {
  const PendingCoursesPage({
    Key? key,
    this.onPressed,
    this.title,
    this.desc,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final String? title, desc;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending Courses'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < 5; i++)
            Container(
              decoration: BoxDecoration(
                color: theme.onSecondaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('title'),
                      Text('datetime'),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('complete'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
