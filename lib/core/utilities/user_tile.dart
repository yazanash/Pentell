import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class UserTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(right: BorderSide(color: Colors.black, width: 10))),
        child: ClipRRect(
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        children: const [
                          Text(
                            "User Name",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("User Name",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}