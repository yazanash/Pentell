import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/user_tile.dart';

class CastsTab extends StatelessWidget {
  const CastsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: 5,
      itemBuilder: (c, index) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const UserTile());
      },
    );
  }
}
