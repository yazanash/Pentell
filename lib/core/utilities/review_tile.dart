import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  ProfileImage(
                      url: "lib/assets/logo3.png",
                      size: 60,
                      borderWidth: 0,
                      borderColor: Colors.white,
                      background: Colors.black,
                      padding: 8),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
