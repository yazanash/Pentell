import 'package:flutter/material.dart';
import 'package:pentelligence/features/connections/views/widgets/lobby_card.dart';

class AllLobbiesPage extends StatelessWidget {
  const AllLobbiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All lobbies'),
      ),
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        children: [
          for (int i = 0; i < 5; i++)
            LobbyCard2(
              onPressed: () {},
              progress: i * 0.2 + 0.1,
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_comment_outlined),
        tooltip: 'BroadCast',
      ),
    );
  }
}
