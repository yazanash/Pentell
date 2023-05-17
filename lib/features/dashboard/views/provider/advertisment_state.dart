
import 'dart:io';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class AdvertismentState extends ChangeNotifier {
  List<File> images = [];

  final picker = ImagePicker();
  final controller = CarouselController();

  Future<void> pickImages() async {
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final file = File(image.path);
      images.add(file);
      notifyListeners();
    }
  }

  void removeImage(int index) {
    images.removeAt(index);
    notifyListeners();
  }
}
