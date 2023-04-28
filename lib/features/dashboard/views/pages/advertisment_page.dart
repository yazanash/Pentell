import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AdvertismentPage extends StatefulWidget {
  AdvertismentPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AdvertismentPage> createState() => _AdvertismentPageState();
}

class _AdvertismentPageState extends State<AdvertismentPage> {
  List<File> images = [];

  final picker = ImagePicker();
  final controller = CarouselController();

  Future<void> pickImages() async {
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final file = File(image.path);

      images.add(file);
      setState(() {});
    }
  }

  void removeImage(int index) {
    images.removeAt(index);
    setState(() {});
  }

  int calculateProgress(double? progress) {
    if (progress != null) {
      return (progress * 100).toInt();
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advertisments'),
        actions: [
          if (images.isNotEmpty)
            IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(Icons.download_done_outlined),
            )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: CarouselSlider.builder(
              itemCount: images.length,
              carouselController: controller,
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                enableInfiniteScroll: false,
                height: double.infinity,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
              ),
              itemBuilder: (context, itemIndex, pageIndex) {
                return Stack(
                  children: [
                    Image.file(
                      images[itemIndex],
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height,
                    ),
                    Align(
                      alignment: Alignment.lerp(
                              Alignment.bottomRight, Alignment.center, 0.1)
                          as Alignment,
                      child: Material(
                        color: Theme.of(context).colorScheme.error,
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: const CircleBorder(),
                        child: InkWell(
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.delete_forever),
                          ),
                          onTap: () {
                            removeImage(itemIndex);
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 5),
              child: ElevatedButton(
                onPressed: () async {
                  await pickImages();
                },
                child: Text('Add images'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
