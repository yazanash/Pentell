import 'package:flutter/material.dart';

class LobbyMessage extends StatelessWidget {
  const LobbyMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      color: theme.onPrimaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('user name'),
                    Text('22:30'),
                  ],
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {},
                  child: Row(
                    children: [
                      Text('15 '),
                      Icon(
                        Icons.remove_red_eye,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
                'description description description description description description description description description description description description description description description description description description description description '),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  splashRadius: 20,
                  icon: Icon(Icons.forward_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 20,
                  icon: Icon(Icons.thumb_up_alt_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
