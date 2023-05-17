import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/features/course/views/provider/story_page_state.dart';
import 'package:pentelligence/features/course/views/widgets/story_item.dart';
import 'package:provider/provider.dart';

class StoryPage extends StatelessWidget {
  StoryPage({Key? key}) : super(key: key);

  final pageController = PageController();

  //  images in each story...
  final List<String> images = const [
    IMG_LOGO,
    IMG_ERROR,
    IMG_NO_CONTENT,
    "lib/assets/u4.jpg",
  ];
  //  Stories...
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

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StoryPageState>(
      create: (context) => StoryPageState(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, pIndex) {
                if (pIndex < data.length) {
                  return StoryItem(
                    onNext: () {
                      print('next!!');
                      if (pIndex < data.length - 1)
                        pageController.animateToPage(pIndex + 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                      else
                        Navigator.pop(context);
                    },
                    onPrevious: () {
                      print('previuos!!');
                    },
                  );
                } else {
                  return Container();
                }
                // return SizedBox(
                //   width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height,
                //   child: Stack(
                //     children: [
                //       Center(
                //         child: Image.asset(data[pIndex][index]),
                //       ),
                //       Positioned(
                //         left: 0,
                //         top: 0,
                //         bottom: 0,
                //         child: GestureDetector(
                //           onTap: () {
                //             if (index >= 0) {
                //               setState(() {
                //                 if (index == 0) {
                //                   print('true');
                //                   pageController.animateToPage(pIndex - 1,
                //                       duration: Duration(milliseconds: 500),
                //                       curve: Curves.linear);
                //                   index = data[pIndex].length - 1;
                //                 } else
                //                   index--;
                //                 controller.reset();
                //               });
                //             }
                //             print(index);
                //           },
                //           child: Container(
                //             width: 50,
                //             color: Colors.amber,
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         top: 0,
                //         bottom: 0,
                //         right: 0,
                //         child: GestureDetector(
                //           onTap: () {
                //             if (data.length >= pIndex + 1)
                //               setState(() {
                //                 if (data[pIndex].length - 1 == index) {
                //                   print('true');
                //                   pageController.animateToPage(pIndex + 1,
                //                       duration: Duration(milliseconds: 500),
                //                       curve: Curves.linear);
                //                   index = 0;
                //                 } else
                //                   index++;
                //                 controller.reset();
                //               });
    
                //             print(index);
                //           },
                //           child: Container(
                //             width: 50,
                //             color: Colors.red,
                //           ),
                //         ),
                //       ),
                //       Align(
                //         alignment: Alignment.topCenter,
                //         child: SizedBox(
                //           width: MediaQuery.of(context).size.width,
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             children: [
                //               for (int i = 0; i < images.length; i++)
                //                 SizedBox(
                //                   width: MediaQuery.of(context).size.width *
                //                       0.7 /
                //                       images.length,
                //                   child: LinearProgressIndicator(
                //                     value: i < index
                //                         ? 1
                //                         : i == index
                //                             ? controller.value
                //                             : 0,
                //                   ),
                //                 ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // );
              },
            ),
          ),
        ),
      ),
    );
  }
}
