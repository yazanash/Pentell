import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    this.onPressed,
    this.onEdit,
  }) : super(key: key);

  final VoidCallback? onPressed, onEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: theme.colorScheme.background,
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ProfileImage(
                  url: "lib/assets/logo3.png",
                  size: 50,
                  borderColor: Colors.white,
                  borderWidth: 1,
                  background: Colors.black,
                  padding: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User Name", style: theme.textTheme.headline3),
                    Text("Role", style: theme.textTheme.headline4),
                  ],
                ),
              ),
            ],
          ),
          if (onEdit != null)
            TextButton(
              onPressed: onEdit,
              child: Icon(Icons.edit),
            ),
        ],
      ),
    );
  }
}
