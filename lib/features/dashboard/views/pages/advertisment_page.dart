import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pentelligence/features/dashboard/views/widgets/ads_card.dart';

class AdvertismentPage extends StatelessWidget {
  const AdvertismentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advertisments'),
      ),
      body: Container(),
    );
  }
}
