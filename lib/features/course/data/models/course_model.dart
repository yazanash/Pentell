import 'package:pentelligence/features/course/models/entities/course.dart';

class CourseModel extends Course {
  CourseModel(
      {required super.id,
      required super.name,
      required super.provider,
      required super.teacher,
      required super.cversions,
      required super.tags,
      required super.category,
      required super.current_version});

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
        id: json['id'],
        name: json['name'],
        provider: json['provider'],
        teacher: json['teacher'],
        cversions: json['cversions'],
        tags: json['tags'],
        category: json['category'],
        current_version:json['current_version']);
  }

  Map<String, dynamic> toMap(Course course) {
    return {
      "id": course.id,
      "name": course.name,
      "provider": course.provider,
      "teacher": course.teacher,
      "cversions": course.cversions,
      "tags": course.tags,
      "category": course.category,
      "current_version":current_version
    };
  }
}
