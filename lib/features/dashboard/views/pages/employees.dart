import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';
import 'package:pentelligence/features/dashboard/views/provider/cast_state.dart';
import 'package:provider/provider.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CastState>(
      create: (context) => CastState(),
      builder: (_, child) {
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
      },
    );
  }
}
