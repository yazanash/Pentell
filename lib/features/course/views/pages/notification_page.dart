import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pentelligence/features/course/views/widgets/notifications.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Notify")),
      body: ListView.separated(
        padding: EdgeInsets.all(5),
        itemCount: 5,
        itemBuilder: (context, index) {
          return NotifyWidget();
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 5);
        },
      ),
    );
  }
}
