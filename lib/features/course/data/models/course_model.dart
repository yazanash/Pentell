import 'package:pentelligence/features/course/models/entities/course.dart';

class CourseModel extends Course {
  CourseModel({
    required super.id,
    required super.name,
    required super.provider,
    required super.cversions,
    required super.categories,
    required super.bio,
    required super.activeVersions,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
        id: json['id'],
        name: json['name'],
        provider: json['provider'],
        cversions: json['cversions'],
        bio: json['bio'],
        categories: json['categories'],
        activeVersions: json['current_version']);
  }

  Map<String, dynamic> toMap(Course course) {
    return {
      "id": course.id,
      "name": course.name,
      "provider": course.provider,
      "cversions": course.cversions,
      "bio": course.bio,
      "current_version": course.activeVersions,
      "categories" : course.categories
    };
  }
}
