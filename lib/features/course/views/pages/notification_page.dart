import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/timeline_widget.dart';
import 'package:pentelligence/features/course/views/widgets/notifications.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TimeLineWidget(),
    );
  }
}
