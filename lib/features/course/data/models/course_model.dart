import 'package:pentelligence/features/course/models/entities/course.dart';

class CourseModel extends Course {
  CourseModel({
    required super.id,
    required super.name,
    required super.provider,
    required super.cversions,
    super.isJoined,
    required super.tags,
    required super.category,
    required super.currentVersions,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
        id: json['id'],
        name: json['name'],
        provider: json['provider'],
        cversions: json['cversions'],
        isJoined: json['isJoined'] ?? false,
        tags: json['tags'],
        category: json['category'],
        currentVersions: json['current_version']);
  }

  Map<String, dynamic> toMap(Course course) {
    return {
      "id": course.id,
      "name": course.name,
      "provider": course.provider,
      "cversions": course.cversions,
      "tags": course.tags,
      "category": course.category,
      "current_version": currentVersions
    };
  }
}
