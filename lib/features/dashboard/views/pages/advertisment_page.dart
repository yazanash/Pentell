import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pentelligence/features/dashboard/views/provider/advertisment_state.dart';
import 'package:provider/provider.dart';

class AdvertismentPage extends StatelessWidget {
  AdvertismentPage({
    Key? key,
  }) : super(key: key);

  int calculateProgress(double? progress) {
    if (progress != null) {
      return (progress * 100).toInt();
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AdvertismentState>(
      create: (context) => AdvertismentState(),
      builder: (c, child) {
        return Consumer<AdvertismentState>(
          builder: (context, value, child) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Advertisments'),
                actions: [
                  if (value.images.isNotEmpty)
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
                      itemCount: value.images.length,
                      carouselController: value.controller,
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
                              value.images[itemIndex],
                              fit: BoxFit.contain,
                              height: MediaQuery.of(context).size.height,
                            ),
                            Align(
                              alignment: Alignment.lerp(Alignment.bottomRight,
                                  Alignment.center, 0.1) as Alignment,
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
                                    value.removeImage(itemIndex);
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
                          await value.pickImages();
                        },
                        child: Text('Add images'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
