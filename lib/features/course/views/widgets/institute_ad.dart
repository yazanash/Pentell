import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class InstituteAd extends StatelessWidget {
  const InstituteAd({Key? key}) : super(key: key);

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
              background: Colors.blueGrey,
              borderWidth: 0,
              isTrusted: true),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 80,
            child: Text(
              'Institute Name Name Name',
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
