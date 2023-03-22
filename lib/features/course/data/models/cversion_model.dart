import 'package:pentelligence/features/course/models/entities/course.dart';
import 'package:pentelligence/features/course/models/entities/cversion.dart';

class CVersionModel extends CVersion {
  CVersionModel(
      {
      required super.version_id,
      required super.teacher,
      required super.ratings,
      required super.tags,
      required super.category,
      required super.course_id,
      required super.maxch,
      required super.minch,
      required super.joined,
      required super.lobby});

  factory CVersionModel.fromJson(Map<String, dynamic> json) {
    return CVersionModel(
      version_id:json["version_id"],
      teacher:json["teacher"],
      ratings:json["ratings"],
      tags:json["tags"],
      category:json["category"],
      course_id:json["course_id"],
      maxch:json["maxch"],
      minch:json["minch"],
      joined:json["joined"],
      lobby:json["lobby"]);
  }

  Map<String, dynamic> toMap(CVersion cversion) {
    return {
      "version_id":cversion.version_id,
      "teacher":cversion.teacher,
      "ratings":cversion.ratings,
      "tags":cversion.tags,
      "category":cversion.category,
      "course_id":cversion.course_id,
      "maxch":cversion.maxch,
      "minch":cversion.minch,
      "joined":cversion.joined,
      "lobby":cversion.lobby,
    };
  }
}
