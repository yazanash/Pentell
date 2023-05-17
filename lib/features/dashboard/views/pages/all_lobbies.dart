import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pentelligence/features/connections/views/widgets/lobby_card.dart';
import 'package:pentelligence/features/dashboard/views/provider/all_lobbies_state.dart';
import 'package:provider/provider.dart';

class AllLobbiesPage extends StatelessWidget {
  const AllLobbiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AllLobbiesState>(
      create: (context) => AllLobbiesState(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('All lobbies'),
        ),
        body: GridView.count(
          childAspectRatio: 1.5,
          crossAxisCount: 2,
          children: [
            for (int i = 0; i < 4; i++)
              Selector<AllLobbiesState, Tuple2<String, bool>>(
                selector: (_, state) =>
                    Tuple2<String, bool>(state.lobbies[i], state.selected[i]),
                builder: (context, data, child) {
                  return LobbyCard2(
                    isSelected: data.value2,
                    onPressed: () {
                      Provider.of<AllLobbiesState>(context, listen: false)
                          .select(i);
                    },
                    progress: i * 0.2 + 0.1,
                  );
                },
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_comment_outlined),
          tooltip: 'BroadCast',
        ),
      ),
    );
  }
}
