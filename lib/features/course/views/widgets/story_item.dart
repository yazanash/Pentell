import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart';

class StoryItem extends StatefulWidget {
  const StoryItem({
    Key? key,
    required this.onNext,
    required this.onPrevious,
  }) : super(key: key);

  final VoidCallback onNext, onPrevious;

  @override
  State<StoryItem> createState() => _StoryItemState();
}

class _StoryItemState extends State<StoryItem>
    with SingleTickerProviderStateMixin {
  final List<String> images = const [
    IMG_LOGO,
    IMG_ERROR,
    IMG_NO_CONTENT,
    "lib/assets/u4.jpg",
  ];
  int index = 0;

  late final AnimationController controller;
  late final Animation<double> anime;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    anime = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addListener(() {
        setState(() {
          if (controller.isCompleted) {
            if (index == images.length - 1) {
              widget.onNext();
            } else {
              index++;
            }
            controller.reset();
          }
          controller.forward();
        });
      });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          GestureDetector(
            onTapDown: (details) {
              controller.stop();
            },
            onTapUp: (details) {
              controller.forward();
            },
            onTapCancel: () {
              controller.forward();
            },
            child: Container(
              color: Colors.transparent,
              child: Center(
                child: Image.asset(images[index]),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                if (index >= 0) {
                  setState(() {
                    if (index == 0) {
                      print('backwords!!!');
                      widget.onPrevious();
                    } else
                      index--;
                    controller
                      ..reset()
                      ..repeat();
                  });
                }
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
                // if (data.length >= pIndex + 1)
                setState(() {
                  if (images.length - 1 == index) {
                    print('forwords!!!');
                    widget.onNext();
                    index = 0;
                  } else
                    index++;
                  controller
                    ..reset()
                    ..repeat();
                });

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
                        value: i < index
                            ? 1
                            : i == index
                                ? controller.value
                                : 0,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
