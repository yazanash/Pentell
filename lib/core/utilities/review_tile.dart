import 'package:flutter/material.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: theme.colorScheme.background),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ProfileImage(
                  url: "lib/assets/logo3.png",
                  size: 40,
                  borderWidth: 0,
                  borderColor: Colors.white,
                  background: Colors.black,
                  padding: 8),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "User Name",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                margin: const EdgeInsets.only(right: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_border_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      ' 4.8',
                      style: theme.textTheme.headline3!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text('24/02/2023',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: theme.textTheme.headline3)),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                  'description of the final course at stake of course its not final nor finished but thats what you will get when you fuck with santa clause',
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyText2),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 5),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: const [

          //       // Text(
          //       //   "lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem lorem ipsum dolor lorem",
          //       //   style: TextStyle(color: Colors.black, fontSize: 15),
          //       //   softWrap: true,
          //       //   maxLines: 3,
          //       //   overflow: TextOverflow.ellipsis,
          //       // ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
