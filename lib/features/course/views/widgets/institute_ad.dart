import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class InstituteAd extends StatelessWidget {
  const InstituteAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            width: 80,
            child: Text(
              'data data data data data',
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
