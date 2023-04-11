import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MembersTab extends StatelessWidget {
  const MembersTab({
    Key? key,
    required this.members,
  }) : super(key: key);
  final List<Widget> members;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        children: members,
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: '3',
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
