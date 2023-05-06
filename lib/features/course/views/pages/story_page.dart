import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pentelligence/core/constant/constant.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final List<String> images = const [
    IMG_LOGO,
    IMG_ERROR,
    IMG_NO_CONTENT,
    "lib/assets/u4.jpg",
  ];
  final List<List<String>> data = [
    [
      IMG_LOGO,
      IMG_ERROR,
      IMG_NO_CONTENT,
      "lib/assets/u4.jpg",
    ],
    [
      IMG_LOGO,
      IMG_ERROR,
      IMG_NO_CONTENT,
      "lib/assets/u4.jpg",
    ]
  ];

  int index = 0;

  int globalIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        for (int i = 0; i < data[globalIndex].length; i++)
                          Image.asset(data[globalIndex][index]),
                      ],
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          if (index > 0) index--;
                          setState(() {});
                          print(index);
                        },
                        child: Container(
                          width: 50,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          if (index < images.length - 1) index++;
                          setState(() {});
                          print(index);
                        },
                        child: Container(
                          width: 50,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for (int i = 0; i < images.length; i++)
                              SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.7 /
                                    images.length,
                                child: LinearProgressIndicator(
                                  value: i < index ? 1 : 0,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
