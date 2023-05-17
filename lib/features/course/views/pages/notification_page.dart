import 'package:flutter/material.dart';
import 'package:pentelligence/features/course/views/provider/notification_page_state.dart';
import 'package:pentelligence/features/course/views/widgets/notifications.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotificationPageState>(
      create: (context) => NotificationPageState(),
      child: Scaffold(
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
      ),
    );
  }
}
