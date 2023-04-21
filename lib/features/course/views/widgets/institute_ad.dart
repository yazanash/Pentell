import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class InstituteAd extends StatelessWidget {
  const InstituteAd({
    Key? key,
    this.onPressed,
    required this.url,
  }) : super(key: key);
  final VoidCallback? onPressed;
final String url;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProfileImage(
            url: url,
            size: 80,
            background: theme.colorScheme.surface,
            borderWidth: 0.0,
            isTrusted: true,
            onPressed: onPressed,
          ),
          const SizedBox(
            width: 80,
            child: Text(
              'Institute Name Name Name',
              softWrap: true,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
