import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AdvertismentPage extends StatelessWidget {
  AdvertismentPage({
    Key? key,
  }) : super(key: key);

  List<XFile> images = [];
  final picker = ImagePicker();
  Future<void> pickImages() async {
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      images.add(image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advertisments'),
      ),
      body: CarouselSlider.builder(
        options: CarouselOptions(
          aspectRatio: 1,
          autoPlay: true,
        ),
        itemCount: 5,
        itemBuilder: (c, index1, index2) {
          return InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 5,
                ),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.image_search_rounded,
                  ),
                  Text('Add Story'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
