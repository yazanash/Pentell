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
  List<File> images = [
    File(
        '/data/user/0/com.example.pentelligence/cache/37e29fe7-2bdd-4527-b7fc-b3c2e3fc898e/Screenshot_20230420-220547.jpg')
  ];

  final picker = ImagePicker();

  Future<void> pickImages() async {
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final file = File(image.path);

      images.add(file);
      setState(() {});
    }
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
      ),
      body: Column(
        children: [
          if (images.isNotEmpty)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: CarouselSlider.builder(
                itemCount: images.length,
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  enableInfiniteScroll: false,
                  height: double.infinity,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                ),
                itemBuilder: (context, itemIndex, pageIndex) {
                  return Image.file(
                    images[itemIndex],
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height,
                  );
                },
              ),
            ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                await pickImages();
              },
              child: Text('Add images'),
            ),
          ),
        ],
      ),
    );
  }
}
