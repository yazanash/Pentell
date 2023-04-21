import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class LobbyCard extends StatelessWidget {
  const LobbyCard({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: theme.primaryColorLight,
            borderRadius: BorderRadius.circular(10)),
        width: 160,
        height: 170,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(children: [
            ProfileImage(
                url: "lib/assets/logo3.png",
                size: 45,
                padding: 8.0,
                borderColor: Colors.transparent,
                background: Colors.blue,
                borderWidth: 0),
            const Text(
              "اسم الدورة",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Institute Name",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "99/99/9999",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "+99",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "New Messages",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class LobbyCard2 extends StatelessWidget {
  const LobbyCard2({
    Key? key,
    this.newMessages = 0,
    this.progress = 0,
    this.dateOfcreation = '99/99/9999',
    required this.onPressed,
    this.onLongPressed,
    this.isSelected = false,
  }) : super(key: key);
  final int newMessages;
  final double progress;
  final String dateOfcreation;
  final VoidCallback? onPressed, onLongPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(5),
      width: 150,
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: isSelected
              ? BorderSide(
                  width: 1,
                  color: Colors.blue,
                )
              : BorderSide.none,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onPressed,
          onLongPress: onLongPressed,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'lobby name or course name',
                  style: theme.textTheme.displaySmall,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(dateOfcreation),
                ),
                if (newMessages > 0) Text('$newMessages New messages'),
                LinearProgressIndicator(value: progress),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
