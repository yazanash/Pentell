import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/review_tile.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: 5,
      itemBuilder: (c, index) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Review());
      },
    );
  }
}
