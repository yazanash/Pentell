import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class InstituteAd extends StatelessWidget {
  const InstituteAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProfileImage(
              url: 'lib/assets/logo3.png',
              size: 80,
              background: Colors.blueGrey,
              borderWidth: 0,
              isTrusted: true),
          SizedBox(
            width: 80,
            child: Text(
              'data data data data data',
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
