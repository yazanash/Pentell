import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class InstituteAd extends StatelessWidget {
  const InstituteAd({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProfileImage(
            url: 'lib/assets/logo3.png',
            size: 80,
            background: theme.colorScheme.surface,
            borderWidth: 0.0,
            isTrusted: true,
            onPressed: onPressed,
          ),
          SizedBox(
            height: 5,
          ),
          const SizedBox(
            width: 80,
            child: Text(
              'Institute Name Name Name',
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
