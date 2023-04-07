import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Employees')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return UserTile(
            onPressed: () {},
            onEdit: () {},
          );
        },
      ),
    );
  }
}
