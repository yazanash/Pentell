
import 'package:pentelligence/features/dashboard/models/entities/story.dart';

class StoryModel extends Story {
  StoryModel({
    required super.publisher,
    required super.imageurl,
    required super.seens
  });


 factory StoryModel.fromJson(Map<String, dynamic> json) {
    return StoryModel(
      publisher: json["puplisher"],
      imageurl: json["imageurl"],
         seens: json["seens"],
    );
  }

  Map<String, dynamic> toMap(Story story) {
    return {
       "puplisher": story.publisher,
      "imageurl": story.imageurl,
        "seens": story.seens,
    };
  }


}